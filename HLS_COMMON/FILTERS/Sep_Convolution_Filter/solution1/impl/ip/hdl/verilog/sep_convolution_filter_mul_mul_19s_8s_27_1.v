
`timescale 1 ns / 1 ps

  module sep_convolution_filter_mul_mul_19s_8s_27_1_DSP48_4(a, b, p);
input signed [19 - 1 : 0] a; 
input signed [8 - 1 : 0] b; 
output signed [27 - 1 : 0] p; 

assign p = $signed (a) * $signed (b);

endmodule

`timescale 1 ns / 1 ps
module sep_convolution_filter_mul_mul_19s_8s_27_1(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



sep_convolution_filter_mul_mul_19s_8s_27_1_DSP48_4 sep_convolution_filter_mul_mul_19s_8s_27_1_DSP48_4_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

