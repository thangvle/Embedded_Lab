#include "xparameters.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xil_printf.h"

/* Definitions */
#define BTNS_DEVICE_ID	 XPAR_AXI_GPIO_0_DEVICE_ID	/* GPIO device that LEDs are connected to */
#define LEDS_DEVICE_ID	 XPAR_AXI_GPIO_1_DEVICE_ID
#define LED 0x0										/* Initial LED value - X00X */
#define LED_DELAY 10000000							/* Software delay length */
#define LED_CHANNEL 1								/* GPIO port for LEDs */
#define printf xil_printf							/* smaller, optimised printf */

XGpio LEDInst;
XGpio BTNInst;
XGpio SWSInst;

int LEDProblem1(void) {

	int Status;
	int btn_val;
	int led = LED;
	int buttonRead;

	/* Loop forever blinking the LED. */

	/* Write output to the LEDs. */
	while (1) {
		btn_val = XGpio_DiscreteRead(&BTNInst, 1);

		//	Button 0 and 1
		if (btn_val == 0 && btn_val == 1) {
			led = 0;
			while (1) {

				led = led + 2;	//	increase straight binary for even number

				XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, led);
				for (int Delay = 0; Delay < LED_DELAY; Delay++)
					;

			}
			break;
		}

		//	Button 1 and 3
		if (btn_val == 1 && btn_val == 3) {

			led = 0;
			led = led - 1; //Set LED to 15

			while (1) {

				led = led - 2;	//	Decrease odd value

				XGpio_DiscreteWrite(&LEDInst, LED_CHANNEL, led);
				for (int Delay = 0; Delay < LED_DELAY; Delay++)
					;

			}
			break;
		}

		return XST_SUCCESS; /* Should be unreachable */
	}
}

/* Main function. */
int main(void) {

	int Status;

	// Initialization

	Status = XGpio_Initialize(&LEDInst, LEDS_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	Status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	/*Set the direction for the LEDs to output. */
	XGpio_SetDataDirection(&LEDInst, 1, 0x0);
	XGpio_SetDataDirection(&BTNInst, 1, 0xFF);

	LEDProblem1();

	return 0;
}

