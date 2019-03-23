
// main.c DA2PmodTest	ECE3622
// Dennis Silage   c2019

#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "math.h"

//DAC2Pmod from Address Editor in Vivado
#define DA2acq  0x43C00000   //DA2 acquisition    - output
#define DA2dav	0x43C00004	 //DA2 data available - input
#define DA2dat1	0x43C00008	 //DA2 channel 1 data - output
#define DA2dat2 0x43C0000C	 //DA2 channel 2 data - output



int main(void)
{

	//	Initialize b values
	int b0 = 2, b1 = 3, b2 = 4, b3 = 1, b4 = 1;

	int dacdata=0;	//DAC ramp data
	int dacdav;		//DAC data available
	int dacacq=0;	//DAC acquire
	float y[4096];
	float transfer[] = {0,0,0,0,0};
	float output = 0;


	//	sinuisoid with 4096 discrete points
	for(int i = 0; i < 4095; ++i){
		y[i] = 20*sin(2*M_PI*i/4096);
	}



	// making a transfer function by adding b coefficients
	output = b0*transfer[0];
	output += b1*transfer[1];
	output += b2*transfer[2];
	output += b3*transfer[3];
	output += b4*transfer[4];

	xil_printf("\n\rStarting DA2 Pmod demo test...\n\r");
    Xil_Out32(DA2acq,0);


    while(1)
    {
    	if(dacdata==4096)
    		dacdata=0;

    	// a push-down list aka a stack
    	transfer[4] = transfer[3];
    	transfer[3] = transfer[2];
    	transfer[2] = transfer[1];
    	transfer[1] = transfer[0];
    	transfer[0] = y[dacdata];

    	dacdav=Xil_In32(DA2dav);
    	//xil_printf("dacdav %d  dacacq %d dacdata %d\n\r",dacdav, dacacq, dacdata);
    		if(dacdav==0 && dacacq==0)			//DAC not in use?
    			{
    			Xil_Out32(DA2dat1, y[dacdata]);	// sinusoidal signal
    			Xil_Out32(DA2dat2, output);		// transfer function output
    			Xil_Out32(DA2acq,1);			//DAC acquire
    			dacacq=1;
    			}
    		if(dacdav==1 && dacacq==1)			//DAC data available
    			{
    			Xil_Out32(DA2acq,0);			//stop DAC acquire
    			dacacq=0;
    			dacdata++;						//increment DAC data
    			}
    }
 }
