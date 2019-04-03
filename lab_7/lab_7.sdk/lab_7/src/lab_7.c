#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timer.h"

#include "xil_printf.h"
#include "xparameter.h"

//Defining GPIO and constants
#define BTN_GPIO	XPAR_AXI_GPIO_0_DEVICE
#define SWS_GPIO	XPAR_AXI_GPIO_0_DEVICE
#define LED_GPIO	XPAR_AXI_GPIO_1_DEVICE
#define	BTN_CHANNEL 1
#define SWS_CHANNEL	2
#define	LED_CHANNEL	1
#define TIMER_ID 1

XGpio BTNInst, SWInst, LEDInst;
Static TaskHandle_t xTaskLED, xTaskBTN, xTaskSW;

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
	int status;
	// Initialize LED GPIO
	status = XGpio_Initialize(&LEDInst, LED_GPIO);
	if (status != XST_SUCCESS) return XST_FAILURE;

	// Set Priority for task LED
	//vTaskPrioritySet(xTaskLED, (tskIDLE_PRIORITY+1));
	for(int i = 0; i < 15; i++){
		led = 0;
		XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, led);
		led++;
	}



}

static void TaskBTN(void *pvParameters){
	int status;
	// Initialize BTN GPIO
	status = XGpio_Initialize(&BTNInst, BTN_GPIO);
	if (status != XST_SUCCESS) return XST_FAILURE;

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
	int status;

	status = XGpio_Initialize(&SWInst, SW_GPIO);
	if (status != XST_SUCCESS) return XST_FAILURE;

	//vTaskPrioritySet(xTaskSW, (tskIDLE_PRIORITY+1));

	for(;;){
		sw = XGpio_DiscreteRead(&SWInst, SW_GPIO);
		if (sw == 1){
			vTaskSuspend(xTaskLED);
		} else {
			vTaskResume(xTaskLED);
		}
	}
}

// Task creation in main
int main(void)
{
	xTaskCreate(TaskLED,
			(const char*) "Task LED",
			configMINIMAL_STACK_SIZE,
			NULL,
			(tskIDLE_PRIORITY+1),
			&xTaskLED);

	xTaskCreate(TaskBTN,
			(const char*) "Task BTN",
			NULL,
			(tskIDLE_PRIORITY+1),
			&xTaskBTN);

	xTaskCreate(TaskSW,
				(const char*) "Task SW",
				NULL,
				(tskIDLE_PRIORITY+1),
				&xTaskSW);

	xTimer = xTimerCreate((const char*)"Timer",
							/*Timer value here*/,
							pdFALSE,
							(void *)TIMER_ID,
							vTimerCallback);


}
