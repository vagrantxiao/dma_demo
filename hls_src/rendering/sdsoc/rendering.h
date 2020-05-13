/*===============================================================*/
/*                                                               */
/*                         rendering.h                           */
/*                                                               */
/*                 C++ kernel for 3D Rendering                   */
/*                                                               */
/*===============================================================*/

#ifndef __RENDERING_H__
#define __RENDERING_H__

#include "../host/typedefs.h"


//#pragma SDS data access_pattern(input:SEQUENTIAL, output:SEQUENTIAL)
void rendering (
		  hls::stream<ap_uint<32> > & Input_1,
		  hls::stream<ap_uint<32> > & Output_1
		);

void rendering_mono (
		  hls::stream<ap_uint<32> > & Input_1,
		  hls::stream<ap_uint<32> > & Output_1
		);

void data_recv(
		  hls::stream<ap_uint<DATA_WIDTH> > & Input_1,
		  hls::stream<ap_uint<DATA_WIDTH> > & Output_1
		  );

void data_send(
		  hls::stream<ap_uint<DATA_WIDTH> > & Output_1
		  );
#endif

