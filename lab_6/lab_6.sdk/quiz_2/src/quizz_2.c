#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timer.h"
#include "xil_printf.h"
#include "xparameter.h"

#define TIMER_ID 1

static TaskHandle_t xSendTask;
static TaskHandle_t xRecvTask;
static QueueHanle_t xQueue = NULL;
static TimerHandle_t xTimer = NULL;
char firstString[20] = "first string";
char secondString[20] = "second string";
long ReceivtaskCntr = 0;

int main(void){
	const TickType_t x8sec = pdMS_TO_TICKS(8000UL);

	xTaskCreate(prvSENDtask, (const char*) "SEND", configMINIMAL_STACK_SIZE, NULL, 1, &xSendTask) // priority 1
	xTaskCreate(prvRECVtask, (const char*) "RECV", configMINIMAL_STACK_SIZE, NULL, 4, &xRecvTask) // priority 4

	xQueue = xQueueCreate(2, sizeof(firstString) + sizeof(secondString));
	configASSERT(xQueue);

	xTimer = xTimerCreate((const char*)"Timer", x8sec, pdFALSE, (void*) TIMER_ID, vTimerCallback);
	configASSER(xTimer);

	xTimerStart(xTimer, 0);
	vTaskStartScheduler();
	for(;;);
}

//SEND Task
static void prvSENDtask(void *pvParameters){
	const TickType_t x5sec = pdMS_TO_TICKS(5000UL);
	const TickType_t x2sec = pdMS_TO_TICKS(2500UL);

	for(;;){
		// Send two Strings
		vTaskDelay(x5sec);
		xQueueSend(xQueue, firstString, 0UL);
		vTaskDelay(x2sec);
		xQueueSend(xQueue, secondString, 0UL);


	}
}

static void prvRECVtask(void *pvParameters){
	char Recvstring1[20]= "";
	char Recvstring2[20]= "";
	for(;;){
		xQueueReceive(xQueue, Recvstring, portMAX_DELAY);
		xil_printf("Thank you");
		xQueueReceive(xQueue, Recvstring, portMAX_DELAY);
		xil_printf("Thank you");

	}
}

static void vTimerCallback(TimerHandle_t pxTimer){
	long lTimerID;
	lTimerID = (long) pvTimerGetTimerID(pxTimer);
	if(lTimerID != TIMER_ID){
		xil_printf("sorry");

	}

	if (RecvtaskCntr >= 2500UL){

		xil_printf("thank you");

	}else {
		vTaskDelay(2500UL);
		xil_printf("sorry");
	}

	vTaskDelete(xSendTask);
	vTaskDelete(xRecvTask);
}
