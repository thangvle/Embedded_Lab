/*
 * interrupt_counter_tut_2B.c
 *
 *  Created on: 	Unknown
 *      Author: 	Ross Elliot
 *     Version:		1.1
 */

/********************************************************************************************

* VERSION HISTORY
********************************************************************************************
* 	v1.1 - 01/05/2015
* 		Updated for Zybo ~ DN
*
*	v1.0 - Unknown
*		First version created.
*******************************************************************************************/

#include "xparameters.h"
#include "xgpio.h"
#include "xtmrctr.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdio.h>
#include "xtime_l.h"

// Parameter definitions
#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define TMR_DEVICE_ID		XPAR_TMRCTR_0_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_0_DEVICE_ID
#define LEDS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
#define SWTS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
#define INTC_TMR_INTERRUPT_ID XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR
#define BTN_INT 			XGPIO_IR_CH1_MASK
// Default Expiration Time: 1.79 seconds
#define TMR_LOAD			0xF8000000
#define BTN_CHANNEL 1
#define LED_CHANNEL 2
#define SWT_CHANNEL 1
#define DEFAULT 3

XGpio LEDInst, BTNInst, SWTInst;
XScuGic INTCInst;
XTmrCtr TMRInst;
static int led_data;
static int btn_value;
static int tmr_count;
static int tmr_limit = DEFAULT;
XTime tTime;

//----------------------------------------------------
// PROTOTYPE FUNCTIONS
//----------------------------------------------------
static void BTN_Intr_Handler(void *baseaddr_p);
static void TMR_Intr_Handler(void *baseaddr_p);
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId, XTmrCtr *TmrInstancePtr, XGpio *GpioInstancePtr);

//----------------------------------------------------
// INTERRUPT HANDLER FUNCTIONS
// - called by the timer, button interrupt, performs
// - LED flashing
//----------------------------------------------------


void BTN_Intr_Handler(void *InstancePtr)
{
	// All portions of that lab that has to deal with interrupts is handled within the button
	// interrupt handler itself, as that makes it the easiest.

	// Creating variables to check for what input there is
	int swtRead, btnRead;

	// Checking the input
	swtRead = XGpio_DiscreteRead(&SWTInst, SWT_CHANNEL);
	btnRead = XGpio_DiscreteRead(&BTNInst, BTN_CHANNEL);

	// This large if statement is covering every case that intterupts should be allowed based on
	// the specifications laid out in the lab manual, as it is easier to do this than structure
	// around what is not allowed
	if (swtRead < 0b1000 && (((swtRead % 2 != 0) && btnRead == 0b0001) ||
			((swtRead == 0b0010 || swtRead == 0b0011 || swtRead == 0b0111 || swtRead == 0b0110)
					&& btnRead == 0b0010) || (btnRead == 0b0100 && swtRead < 0b0100) ||
					(btnRead == 0b1000 && swtRead < 0b0100)))
	{
		// Disable GPIO interrupts
		XGpio_InterruptDisable(&BTNInst, BTN_INT);
		// Ignore additional button presses
		if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) !=
				BTN_INT) {
				return;
			}
			
		btn_value = XGpio_DiscreteRead(&BTNInst, 1);
		// Increment counter based on button value
		led_data = led_data + btn_value;

	    XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, led_data);
	    (void)XGpio_InterruptClear(&BTNInst, BTN_INT);
	    // Enable GPIO interrupts
	    XGpio_InterruptEnable(&BTNInst, BTN_INT);
	}

	// For further interrupts to act normally, this function needs to be called regardless of
	// whether interrupts are allowed or not
	(void)XGpio_InterruptClear(&BTNInst, BTN_INT);
	return;
}

void TMR_Intr_Handler(void *data)
{
	if (XTmrCtr_IsExpired(&TMRInst,0)){
		// Once timer has expired 3 times, stop, increment counter
		// reset timer and start running again
		if(tmr_count == tmr_limit)
		{
			// Getting the current time to display in the console for the sake of determining
			// the length of the expiration period
			XTime_GetTime(&tTime);
			printf("Time: %llu\n", tTime);
			// Displaying this built-in constant, as it was not known
			printf("Counts per second: %d\n", COUNTS_PER_SECOND);
			XTmrCtr_Stop(&TMRInst,0);
			tmr_count = 0;
			led_data++;
			XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, led_data);
		}
		else
			tmr_count++;

		XTmrCtr_Reset(&TMRInst,0);
		XTmrCtr_Start(&TMRInst,0);
	}
}



//----------------------------------------------------
// MAIN FUNCTION
//----------------------------------------------------
int main (void)
{
  int status, swtRead, btnRead;
  //----------------------------------------------------
  // INITIALIZE THE PERIPHERALS & SET DIRECTIONS OF GPIO
  //----------------------------------------------------
  // Initialise LEDs
  status = XGpio_Initialize(&LEDInst, LEDS_DEVICE_ID);
  if(status != XST_SUCCESS) return XST_FAILURE;
  // Initialise Push Buttons
  status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
  if(status != XST_SUCCESS) return XST_FAILURE;
  // Initialise Switches
  status = XGpio_Initialize(&SWTInst, SWTS_DEVICE_ID);
  if(status != XST_SUCCESS) return XST_FAILURE;
  // Set LEDs direction to outputs
  XGpio_SetDataDirection(&LEDInst, LED_CHANNEL, 0x00);
  // Set all buttons direction to inputs
  XGpio_SetDataDirection(&BTNInst, BTN_CHANNEL, 0xFF);
  // Set all switches direction to inputs
  XGpio_SetDataDirection(&SWTInst, SWT_CHANNEL, 0xFF);


  //----------------------------------------------------
  // SETUP THE TIMER
  //----------------------------------------------------
  status = XTmrCtr_Initialize(&TMRInst, TMR_DEVICE_ID);
  if(status != XST_SUCCESS) return XST_FAILURE;
  XTmrCtr_SetHandler(&TMRInst, TMR_Intr_Handler, &TMRInst);
  XTmrCtr_SetResetValue(&TMRInst, 0, TMR_LOAD);
  XTmrCtr_SetOptions(&TMRInst, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);


  // Initialize interrupt controller
  status = IntcInitFunction(INTC_DEVICE_ID, &TMRInst, &BTNInst);
  if(status != XST_SUCCESS) return XST_FAILURE;

  XTmrCtr_Start(&TMRInst, 0);

  XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);

  // Handling all other matters of the exercise within this while loop
  while(1)
  {
	  // Checking the user input
	  swtRead = XGpio_DiscreteRead(&SWTInst, SWT_CHANNEL);
	  btnRead =  XGpio_DiscreteRead(&BTNInst, BTN_CHANNEL);

	  // Handling the case of whether SW3 is on at all
	  if(swtRead >= 0b1000)
	  {
		  // Handling the case of whether any button is pressed or any switch other than
		  // SW3 is on, as that is a reset error
		  if(btnRead != 0 || swtRead != 0b1000)
		  {
			  // Temporarily disabling the timer to make sure it does not interrupt
			  // displaying the error pattern to the board
			  XScuGic_Disable(&INTCInst, INTC_TMR_INTERRUPT_ID);
			  // One second on
			  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, 0b1111);
			  sleep(1);
			  // One second off
			  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, 0b0000);
			  sleep(1);
			  // Turning the timer back on
			  XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);
		  }

		  // The core of the reset mode, making sure the amount of expiration periods
		  // is reset back to the default of three
		  tmr_limit = DEFAULT;
	  }
	  // If SW3 isn't on at all, continue with all other normal operations
	  else
	  {
		  // Checking if SW2 is on at all
		  if(swtRead >= 0b0100)
		  {
			  // As BTN2 now has the function of BTN0, provide the same if block that
			  // will go for BTN0 where the limit is incremented and this new value
			  // is displayed to the board
			  if(btnRead == 0b0100)
			  {
				  // Making sure the limit doesn't exceed seven
				  if(tmr_limit < 7)
				  {
					  tmr_limit++;
					  // Similar to the reset error, make sure the timer doesn't
					  // interrupt the display to the board
					  XScuGic_Disable(&INTCInst, INTC_TMR_INTERRUPT_ID);
					  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, tmr_limit);
					  sleep(2);
					  XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);
				  }
			  }

			  // BTN3 taking on the role of BTN1, where it decrements the number of
			  // expiration periods and the new value is displayed to the board
			  if(btnRead == 0b1000)
			  {
				  // Making sure the limit does not go below one
				  if(tmr_limit > 1)
				  {
					  tmr_limit--;
					  XScuGic_Disable(&INTCInst, INTC_TMR_INTERRUPT_ID);
					  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, tmr_limit);
					  sleep(2);
					  XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);
				  }
			  }
		  }
		  // If SW2 is not on, allow for BTN0 and BTN1 to have their normal functions
		  else
		  {
			  // Same as up above, just looking for BTN0 this time
			  if(btnRead == 0b0001)
			  {
				  if(tmr_limit < 7)
				  {
					  tmr_limit++;
					  XScuGic_Disable(&INTCInst, INTC_TMR_INTERRUPT_ID);
					  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, tmr_limit);
					  sleep(2);
					  XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);
				  }
			  }

			  // Same as up above, just looking for BTN1 this time
			  if(btnRead == 0b0010)
			  {
				  if(tmr_limit > 1)
				  {
					  tmr_limit--;
					  XScuGic_Disable(&INTCInst, INTC_TMR_INTERRUPT_ID);
					  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, tmr_limit);
					  sleep(2);
					  XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);
				  }
			  }
		  }
	  }
  }
}

//----------------------------------------------------
// INITIAL SETUP FUNCTIONS
//----------------------------------------------------

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr)
{
	// Enable interrupt
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 	 	 	 	 	 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
			 	 	 	 	 	 XScuGicInstancePtr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

int IntcInitFunction(u16 DeviceId, XTmrCtr *TmrInstancePtr, XGpio *GpioInstancePtr)
{
	XScuGic_Config *IntcConfig;
	int status;

	// Interrupt controller initialisation
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst,
					  	  	 INTC_GPIO_INTERRUPT_ID,
					  	  	 (Xil_ExceptionHandler)BTN_Intr_Handler,
					  	  	 (void *)GpioInstancePtr);
	if(status != XST_SUCCESS) return XST_FAILURE;


	// Connect timer interrupt to handler
	status = XScuGic_Connect(&INTCInst,
							 INTC_TMR_INTERRUPT_ID,
							 (Xil_ExceptionHandler)TMR_Intr_Handler,
							 (void *)TmrInstancePtr);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);

	XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);


	return XST_SUCCESS;
}
