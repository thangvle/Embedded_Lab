#include "xparameters.h"
#include "xgpio.h"
#include "xtmrctr.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdio.h>

// Parameter definitions
#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define TMR_DEVICE_ID		XPAR_TMRCTR_0_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_0_DEVICE_ID
#define LEDS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
#define SWS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
#define LED_CHANNEL			2
#define	SWS_CHANNEL 		1
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
#define INTC_TMR_INTERRUPT_ID XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR
#define ONE_SEC				1000000

#define BTN_INT 			XGPIO_IR_CH1_MASK
#define TMR_LOAD			0xF8000000	//	reload 4160749568 microsec after each expiration

XGpio LEDInst, BTNInst;
XGpio SWInst;
XScuGic INTCInst;
XTmrCtr TMRInst;
static int led_data;
static int btn_value;
static int tmr_count;
static int tmrLimit;


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

	int btn_read;
	int sw_value;
	btn_read = XGpio_DiscreteRead(&BTNInst, 1);
	sw_value = XGpio_DiscreteRead(&SWInst, SWS_CHANNEL);



	if (
			sw_value == 0b1000 // task 2 reset
			|| (sw_value == 0b0001 && btn_read == 0b0001)|| // task 3
			(sw_value == 0b0010 && btn_read == 0b0010) ||	// task 4
			(sw_value == 0b0100 && (btn_read == 0b1000 ||	// task 5
			btn_read == 0b0100 || btn_read == 0b0010 || btn_read == 0b0001))) // Task 6


	{
		XGpio_InterruptDisable(&BTNInst, BTN_INT);
						// Ignore additional button presses

		if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) !=
					BTN_INT) {
			return;
		}


		// Increment counter based on button value
		// Reset if centre button pressed
		btn_value = XGpio_DiscreteRead(&BTNInst, 1);
		led_data = led_data + btn_value;

		XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, led_data);
		(void)XGpio_InterruptClear(&BTNInst, BTN_INT);
		XGpio_InterruptEnable(&BTNInst, BTN_INT);

	}


}

void TMR_Intr_Handler(void *data) {

	// make sure the timer has really expired
	if (XTmrCtr_IsExpired(&TMRInst,0)) {
		// wait until the timer has expired enough times
		if(tmr_count == 3){
			XTmrCtr_Stop(&TMRInst,0);
			// reset timer reset count
			tmr_count = 0;
			// increment led write data
			led_data++;
			// write data to LEDs
			XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, led_data);
		}
		else {
			tmr_count++;
		}

		// reset and start timer
		XTmrCtr_Reset(&TMRInst,0);
		XTmrCtr_Start(&TMRInst,0);
	}
}

//----------------------------------------------------
// MAIN FUNCTION
//----------------------------------------------------
int main (void)
{
  int status;
  int swsValue;
  int btnValue;

  //----------------------------------------------------
  // INITIALIZE THE PERIPHERALS & SET DIRECTIONS OF GPIO
  //----------------------------------------------------
  // Initialise LEDs
  status = XGpio_Initialize(&LEDInst, LEDS_DEVICE_ID);
  if(status != XST_SUCCESS) return XST_FAILURE;
  // Initialise Push Buttons
  status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
  if(status != XST_SUCCESS) return XST_FAILURE;
  //Initialize SW
  status = XGpio_Initialize(&SWInst, SWS_DEVICE_ID);
  if(status != XST_SUCCESS) return XST_FAILURE;
  // Set LEDs direction to outputs
  XGpio_SetDataDirection(&LEDInst, LED_CHANNEL, 0x00);
  // Set all buttons direction to inputs
  XGpio_SetDataDirection(&BTNInst, 1, 0xFF);
  // Set SW to input
  XGpio_SetDataDirection(&SWInst, SWS_CHANNEL, 0xFF);


  //----------------------------------------------------
  // SETUP THE TIMER
  //----------------------------------------------------
  status = XTmrCtr_Initialize(&TMRInst, TMR_DEVICE_ID);
  if(status != XST_SUCCESS) return XST_FAILURE;
  //XTmrCtr_SetHandler(&TMRInst, TMR_Intr_Handler, &TMRInst);
  XTmrCtr_SetHandler(&TMRInst, TMR_Intr_Handler, &TMRInst);
  XTmrCtr_SetResetValue(&TMRInst, 0, TMR_LOAD);
  XTmrCtr_SetOptions(&TMRInst, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);
 



  // Initialize interrupt controller
  status = IntcInitFunction(INTC_DEVICE_ID, &TMRInst, &BTNInst);
  if(status != XST_SUCCESS) return XST_FAILURE;

  XTmrCtr_Start(&TMRInst, 0);

  XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);

  while(1)
	  {
	  // read sws and btn
	  swsValue = XGpio_DiscreteRead(&SWInst, SWS_CHANNEL);
	  btnValue = XGpio_DiscreteRead(&BTNInst, 1);

	  // SWS3 is on
	  if (swsValue == 0b1000){
		  // Handling SWS3 not on and BTN are pressed
		  if (swsValue != 0b1000 && btnValue != 0){
			  // Disable interrupt
			  XScuGic_Disable(&INTCInst, INTC_TMR_INTERRUPT_ID);
			  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, 0x8);
			  sleep(ONE_SEC);
			  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, 0);
			  sleep(ONE_SEC);


		  }
		  tmrLimit = 3; // reset it to default
	  }
	  else {
		  // Handling SW2 ON
		  if (swsValue == 0b0100){
			  // btn3 ON
			  if (btnValue == 0b1000){
				  if(tmrLimit > 1){
					  tmrLimit--;
					  XScuGic_Disable(&INTCInst, INTC_TMR_INTERRUPT_ID);
					  //Display timer value to LED
					  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, tmrLimit);
					  sleep(2); // Delay for 2s
					  XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);

				  }
			  }

			  // btn 2 ON
			  if (btnValue == 0b0100){

				  if (tmrLimit < 7){
					  tmrLimit++;
					  XScuGic_Disable(&INTCInst, INTC_TMR_INTERRUPT_ID);
					  // Displaying tmr value
					  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, tmrLimit);
					  sleep(2);
					  XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);

				  }
			  }
		  }
		  // Case SW0
		  if (swsValue == 0b0001) {
			  if (btnValue == 0b0001){
				  if (tmrLimit < 7){

					  tmrLimit++;
					  XScuGic_Disable(&INTCInst, INTC_TMR_INTERRUPT_ID);
					  XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, tmrLimit);
  					  sleep(2);
  					  XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);

				  }
			  }


		   }

		  // case SW1
		  if (swsValue == 0b0010) {
		  		if (btnValue == 0b0010){
		  			if (tmrLimit > 1){
		  				tmrLimit--;
		  			   	XScuGic_Disable(&INTCInst, INTC_TMR_INTERRUPT_ID);
		  			   	XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, tmrLimit);
		  			   	sleep(2);
		  			   	XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);
		  			}
		  	   	}
		  }

	  }

  }
  return 0;
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
