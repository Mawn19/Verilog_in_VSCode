`timescale 1ms/1ps
`include "full_adder.v"

module adder_8bits (
    input  [7:0] Adder_in1, Adder_in2,
    input  [7:0] Adder_cin,
    output [7:0] Adder_sum,
    output [7:0] Adder_cout
);

full_adder FA_block0 (.FA_in1(Adder_in1[0]), .FA_in2(Adder_in2[0]), .FA_cin(Adder_cin[0]), .FA_sum(Adder_sum[0]), .FA_cout(Adder_cout[0]));
full_adder FA_block1 (.FA_in1(Adder_in1[1]), .FA_in2(Adder_in2[1]), .FA_cin(Adder_cin[1]), .FA_sum(Adder_sum[1]), .FA_cout(Adder_cout[1]));
full_adder FA_block2 (.FA_in1(Adder_in1[2]), .FA_in2(Adder_in2[2]), .FA_cin(Adder_cin[2]), .FA_sum(Adder_sum[2]), .FA_cout(Adder_cout[2]));
full_adder FA_block3 (.FA_in1(Adder_in1[3]), .FA_in2(Adder_in2[3]), .FA_cin(Adder_cin[3]), .FA_sum(Adder_sum[3]), .FA_cout(Adder_cout[3]));
full_adder FA_block4 (.FA_in1(Adder_in1[4]), .FA_in2(Adder_in2[4]), .FA_cin(Adder_cin[4]), .FA_sum(Adder_sum[4]), .FA_cout(Adder_cout[4]));
full_adder FA_block5 (.FA_in1(Adder_in1[5]), .FA_in2(Adder_in2[5]), .FA_cin(Adder_cin[5]), .FA_sum(Adder_sum[5]), .FA_cout(Adder_cout[5]));
full_adder FA_block6 (.FA_in1(Adder_in1[6]), .FA_in2(Adder_in2[6]), .FA_cin(Adder_cin[6]), .FA_sum(Adder_sum[6]), .FA_cout(Adder_cout[6]));
full_adder FA_block7 (.FA_in1(Adder_in1[7]), .FA_in2(Adder_in2[7]), .FA_cin(Adder_cin[7]), .FA_sum(Adder_sum[7]), .FA_cout(Adder_cout[7]));

//assign Adder_cin[0] = Adder_cout[7];

assign Adder_cin[1] = Adder_cout[0];
assign Adder_cin[2] = Adder_cout[1];
assign Adder_cin[3] = Adder_cout[2];
assign Adder_cin[4] = Adder_cout[3];
assign Adder_cin[5] = Adder_cout[4];
assign Adder_cin[6] = Adder_cout[5];
assign Adder_cin[7] = Adder_cout[6];

// Adder_cout[7];
endmodule