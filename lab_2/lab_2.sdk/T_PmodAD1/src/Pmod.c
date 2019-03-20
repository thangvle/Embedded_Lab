
#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xil_cache.h"
#include "PmodAD1.h"
#include "sleep.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xil_printf.h"
#include <math.h>

// Definitions
#define SWTS_DEVICE_ID XPAR_AXI_GPIO_0_DEVICE_ID
#define LEDS_DEVICE_ID XPAR_AXI_GPIO_1_DEVICE_ID
#define SWTS_CHANNEL 2
#define LEDS_CHANNEL 1
#define FIVE 5000000
#define TWO	2000000

/*	Initializing variable	*/

XGpio sws_inst, led_inst;
PmodAD1 myDevice;
const float ReferenceVoltage = 3.3;
float avgVoltage[2] = {0,0};


// Prototyping functions
void DemoInitialize();
void DemoRun();
void DemoCleanup();
void EnableCaches();
void DisableCaches();

void DemoInitialize()
{
	EnableCaches();

	AD1_begin(&myDevice, XPAR_PMODAD1_0_AXI_LITE_SAMPLE_BASEADDR);

	//wait for AD1 to finish powering on
	usleep(1); // 1 us (minimum)
}

void DemoRun()
{
	AD1_RawData RawData;
	AD1_PhysicalData PhysicalData;

	int switchRead;

	while (1) {
		AD1_GetSample (&myDevice, &RawData); // capture raw samples
		AD1_RawToPhysical(ReferenceVoltage, RawData, &PhysicalData); // convert raw samples into floats scaled to 0 - VDD

		// Read switch input
		switchRead = XGpio_DiscreteRead(&sws_inst, SWTS_CHANNEL);

		// if statement to handle all the cases detailed in the lab report

		if (switchRead == 0){
			XGpio_DiscreteWrite(&led_inst, LEDS_CHANNEL, 0);

			printf("ECE3622 Lab 2\n");
			usleep(FIVE);

		}

		//break;

		if (switchRead == 0b0001){
			if (PhysicalData[0] <= 0.2){
				XGpio_DiscreteWrite(&led_inst, LEDS_CHANNEL, 0b000);
			}
			if (PhysicalData[0] > 0.2 && PhysicalData[0] <= 0.4){
				XGpio_DiscreteWrite(&led_inst, LEDS_CHANNEL, 0b0001);
			}
			if (PhysicalData[0] > 0.4 && PhysicalData[0] <= 0.6){
				XGpio_DiscreteWrite(&led_inst, LEDS_CHANNEL, 0b0010);
			}
			if (PhysicalData[0] > 0.6 && PhysicalData[0] <= 0.8){
				XGpio_DiscreteWrite(&led_inst, LEDS_CHANNEL, 0b0100);
			}
			if (PhysicalData[0] > 0.8) {
				XGpio_DiscreteWrite(&led_inst, LEDS_CHANNEL, 0b1000);
			}

		}
		//break;

		if (switchRead == 0b0010)
		{

			//	Putting data to avgVolage array slot 1
			avgVoltage[0] = PhysicalData[0];

			//	Holding value for avgVoltage[0] to avgVoltage[1]
			if (avgVoltage[1] == 0){
				avgVoltage[1] = avgVoltage[0];
			}

			else
			{
				//	avgVoltage[1] will be replaced by the calculated value
				avgVoltage[1] = (avgVoltage[1] + avgVoltage[0]) / 2;

				printf("Running Avg: %.02f\n", avgVoltage[1]);


			}


		}
		//break;
	}



}




void DemoCleanup()
{
	DisableCaches();
}

void EnableCaches()
{
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheEnable();
#endif
#endif
}

void DisableCaches()
{
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
	Xil_DCacheDisable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
	Xil_ICacheDisable();
#endif
#endif
}


int main ()
{
	int status;

	// Initialize switches
	status = XGpio_Initialize(&sws_inst, SWTS_DEVICE_ID);
	if (status != XST_SUCCESS) return XST_FAILURE;
	// Initialize LEDs
	status = XGpio_Initialize(&led_inst, LEDS_DEVICE_ID);
	if (status != XST_SUCCESS) return XST_FAILURE;
	// Set switches direction to inputs
	XGpio_SetDataDirection(&sws_inst, SWTS_CHANNEL, 0xFF);
	// Set LEDs direction to outputs
	XGpio_SetDataDirection(&led_inst, LEDS_CHANNEL, 0x00);

	DemoInitialize();
	DemoRun();
	DemoCleanup();
	return 0;
}

