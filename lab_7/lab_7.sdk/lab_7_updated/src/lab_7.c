#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"

#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
//Defining GPIO and constants
#define BTN_GPIO	XPAR_AXI_GPIO_0_DEVICE_ID
#define SWS_GPIO	XPAR_AXI_GPIO_0_DEVICE_ID
#define LED_GPIO	XPAR_AXI_GPIO_1_DEVICE_ID
#define	BTN_CHANNEL 1
#define SWS_CHANNEL	2
#define	LED_CHANNEL	1
#define TIMER_ID 1
#define TMR_THRESHOLD 9

XGpio BTNInst;
XGpio SWInst, LEDInst;
static TaskHandle_t xTaskLED, xTaskBTN, xTaskSW;
static TimerHandle_t xTimer = NULL;
long LEDTaskCtrl = 0;

/*
 * 1. Create a TaskLED increment a 4 bits counter with priority +1
 * 2. Create a TaskBTN read BTN at Idle task with priority +1
 * 3. Create a TaskSW read SW with Idle task with priority +1
 *    if(SW0 == 1){
 *        TaskSuspend();
 *    } else{
 *        TaskResume();
 *    }
 *
 */


static void TaskLED(void *pvParameters){
	int led = 0;

	// Set Priority for task LED
	//vTaskPrioritySet(xTaskLED, (tskIDLE_PRIORITY+1));
	for(int i = 0; i <= 15; i++){

		XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, led);
		led++;
		if (led == 15){
			led = 0;
		}
	}
	LEDTaskCtrl++;


}

static void TaskBTN(void *pvParameters){

	int btn;

	//Set priority for task BTN
	//vTaskPrioritySet(xTaskBTN, (tskIDLE_PRIORITY+1));
	for(;;){

		btn = XGpio_DiscreteRead(&BTNInst, BTN_CHANNEL);

		if (btn == 1){
			vTaskSuspend(xTaskLED);
		} else{
			vTaskResume(xTaskLED);
		}
	}

}

static void TaskSW(void *pvParameters){

	int sw;
	//vTaskPrioritySet(xTaskSW, (tskIDLE_PRIORITY+1));

	for(;;){
		sw = XGpio_DiscreteRead(&SWInst, SWS_GPIO);
		if (sw == 1){
			vTaskSuspend(xTaskLED);
		} else {
			vTaskResume(xTaskLED);
		}
	}
}

// TimerCallback function
static void vTimerCallback( TimerHandle_t pxTimer){
	long timerID;
	timerID = (long) pvTimerGetTimerID(pxTimer);

	if (timerID != TIMER_ID){
		xil_printf("Timer ID failed");
	}

	if(LEDTaskCtrl >= TMR_THRESHOLD){
		xil_printf("passed");
	} else {
		xil_printf("failed");
	}
}

// Task creation in main
int main(void)
{
	int statusLED, statusBTN, statusSW;

	statusLED = XGpio_Initialize(&LEDInst, LED_GPIO);
	if (statusLED != XST_SUCCESS) return XST_FAILURE;
	statusBTN = XGpio_Initialize(&BTNInst, BTN_GPIO);
	if (statusBTN != XST_SUCCESS) return XST_FAILURE;
	statusSW = XGpio_Initialize(&SWInst, SWS_GPIO);
	if (statusSW != XST_SUCCESS) return XST_FAILURE;

	XGpio_SetDataDirection(&LEDInst, LED_CHANNEL, 0x00);
	XGpio_SetDataDirection(&BTNInst, BTN_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&SWInst, SWS_CHANNEL, 0xFF);

	TickType_t x10s = pdMS_TO_TICKS(10000UL);

	xTaskCreate(TaskLED,
			(const char*) "Task LED",
			configMINIMAL_STACK_SIZE,
			NULL,
			(tskIDLE_PRIORITY+1),
			&xTaskLED);

	xTaskCreate(TaskBTN,
			(const char*) "Task BTN",
			configMINIMAL_STACK_SIZE,
			NULL,
			(tskIDLE_PRIORITY+1),
			&xTaskBTN);

	xTaskCreate(TaskSW, (const char*) "Task SW", configMINIMAL_STACK_SIZE, NULL, (tskIDLE_PRIORITY+1), &xTaskSW);

	xTimer = xTimerCreate((const char*)"Timer",
							x10s,
							pdTRUE,
							(void *)TIMER_ID,
							vTimerCallback);
	xTimerStart(xTimer, 0);
	vTaskStartScheduler();
	for(;;);

}
