/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
/* Xilinx includes. */
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xil_printf.h"

#define TIMER_ID		1
#define ONE_SHOT_PERIOD	pdMS_TO_TICKS(4000)
#define BTN_DEVICE_ID	XPAR_AXI_GPIO_0_DEVICE_ID
#define SW_DEVICE_ID	XPAR_AXI_GPIO_0_DEVICE_ID
#define LED_DEVICE_ID	XPAR_AXI_GPIO_1_DEVICE_ID
#define BTN_CHANNEL		1
#define SW_CHANNEL		2
#define	LED_CHANNEL		1


/* Task BTN with priority 4
 * One shot timer1 of 4000 msec and callback func
 * BTN depressed -> callback Timer1 -> light LEDn for 4000ms
 * SWn is on in Task TBN && BTN depressed -> LEDn is not on, other LED is lit for 4000 ms
 */

TaskHandle_t xTaskBTNSW;
TimerHandle_t xOneShotTimer;
XGpio BTNInst, SWInst, LEDInst;
int btn = 0, sws = 0;
int Status;

static void taskBTNSW( void* pvParameters){
	btn = XGpio_DiscreteRead(&BTNInst, BTN_CHANNEL);
	sws = XGpio_DiscreteRead(&SWInst, SW_CHANNEL);
	int n=0;

	while(1){
		if (btn == 0b0001){
			if (btn != 0b0001)
				n = 0b0001;
		}
		else if (btn == 0b0010){
			if (btn != 0b0010)
				n = 0b0010;
		}
		else if (btn == 0b0100){
			if (btn != 0b0100)
				n = 0b0100;
		}
		else if (btn == 0b1000){
			if (btn != 0b1000)
				n = 0b1000;
		}
		if (sws == 0b0001){
			if (btn == 0b0001){
				if (btn != 0b0001){
					XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, 0b1110);
				}
			}
		}
		else if (sws == 0b0010){
			if (btn == 0b0010){
				if (btn != 0b0010){
					XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, 0b1101);
				}
			}
		}
		else if (sws == 0b0100){
			if (btn == 0b0100){
				if (btn != 0b0010){
					XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, 0b1011);
				}
			}
		}
		else if (sws == 0b1000){
			if (btn == 0b1000){
				if (btn != 1000){
					XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, 0b0111);
				}
			}
		}
	}
}

static void oneShotCallback (TimerHandle_t xTimer) {
	TickType_t xTime;
	configASSERT(xTime);
	uint32_t executionCount;
	executionCount = (uint32_t) pvTimerGetTimerID(xTimer);
	executionCount++;
	xTime = xTaskGetTickCount();
	if (xTime == xOneShotTimer){
		vPrintStringandNumber("One shot timer callback executing", xTime);
	}
}

int main (void){
	XGpio_Initialize(&BTNInst, BTN_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	XGpio_Initialize(&LEDInst, LED_DEVICE_ID);
	if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	XGpio_Initialize(&SWInst, SW_DEVICE_ID);
	if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	XGpio_SetDataDirection(&BTNInst, BTN_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&SWInst, SW_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&LEDInst, LED_CHANNEL, 0x00);

	xTaskCreate(taskBTNSW, (const char*) 'BTN_SW', configMINIMAL_STACK_SIZE, NULL, 4, &xTaskBTNSW);
	xOneShotTimer = xTimerCreate((const char*)'Oneshot', ONE_SHOT_PERIOD, pdFALSE, TIMER_ID, oneShotCallback);
	xTimerStart(xOneShotTimer, 0);
	vTaskStartScheduler();
	while(1);



}
