
// main.c DA2PmodTest	ECE3622
// Dennis Silage   c2019

#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include <math.h>

//DAC2Pmod from Address Editor in Vivado
#define DA2acq  0x43C00000   //DA2 acquisition    - output
#define DA2dav	0x43C00004	 //DA2 data available - input
#define DA2dat1	0x43C00008	 //DA2 channel 1 data - output
#define DA2dat2 0x43C0000C	 //DA2 channel 2 data - output

int MAXSIZE = 8;
int stack[8];
int top = -1;

int isempty() {

   if(top == -1)
      return 1;
   else
      return 0;
}

int isfull() {

   if(top == MAXSIZE)
      return 1;
   else
      return 0;
}

int peek() {
   return stack[top];
}

int pop() {
   int data;

   if(!isempty()) {
      data = stack[top];
      top = top - 1;
      return data;
   } else {
      printf("Could not retrieve data, Stack is empty.\n");
   }
}

int push(int data) {

   if(!isfull()) {
      top = top + 1;
      stack[top] = data;
   } else {
      printf("Could not insert data, Stack is full.\n");
   }
}

int main(void)
{



	int b0 = 2, b1 = 3, b2 = 4, b3 = 1, b4 = 1;
	int output = 0;
	//int push[5] = ;

	int dacdata=0;	//DAC ramp data
	int dacdav;		//DAC data available
	int dacacq=0;	//DAC acquire
	float y[4096];

	output = b0 * push(0);
	output += b1 * push(1);
	output += b2 * push(2);
	output += b3 * push(3);
	output += b4 * push(4);



	xil_printf("\n\rStarting DA2 Pmod demo test...\n\r");
    Xil_Out32(DA2acq,0);

    for (int i = 0; i < 4095; i++){
    	y[i] = 20*sin((2*M_PI*i/4096)) + 20;
    }
    while(1)
    {
    	if(dacdata==4096)
    		dacdata=0;
    	/*
    	 * push[4] = push[3];
    push[3] = push[2];
    push[2] = push[1];
    push[1] = push[0];
    push[0] = y[dacdata];
    	 *
    	 */
    	dacdav=Xil_In32(DA2dav);
    	//xil_printf("dacdav %d  dacacq %d dacdata %d\n\r",dacdav, dacacq, dacdata);
    		if(dacdav==0 && dacacq==0)			//DAC not in use?
    			{
    			Xil_Out32(DA2dat1, y[dacdata]);	//output DAC data
    			Xil_Out32(DA2dat2, output);	//output DAC data
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
