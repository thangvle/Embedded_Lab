// main.c for PmodAd1 Vivado project
// ECE 3622

#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xil_cache.h"
#include "PmodAD1.h"
#include "sleep.h"

PmodAD1 myDevice;
const float ReferenceVoltage = 3.3;

void DemoInitialize();
void DemoRun();
void DemoCleanup();
void EnableCaches();
void DisableCaches();

int main ()
{
	DemoInitialize();
	DemoRun();
	DemoCleanup();
	return 0;
}

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

	while (1) {
		AD1_GetSample (&myDevice, &RawData); // capture raw samples
		AD1_RawToPhysical(ReferenceVoltage, RawData, &PhysicalData); // convert raw samples into floats scaled to 0 - VDD

		printf("Input Data 1: %.02f;   ", PhysicalData[0]);
		printf("Input Data 2: %.02f\r\n", PhysicalData[1]);

		// do this 10x per second
		usleep(100000);
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
