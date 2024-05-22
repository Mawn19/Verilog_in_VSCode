`timescale 1ms/1ps
`include "full_adder.v"

module adder_8bits (
    input  [7:0] first_byte, second_byte,
    input  [7:0] carry_in,
    output [7:0] sum_bytes,
    output [7:0] carry_out
);

full_adder FA_block0 (.A(first_byte[0]), .B(second_byte[0]), .C_in(carry_in[0]), .Sum(sum_bytes[0]), .C_out(carry_out[0]));
full_adder FA_block1 (.A(first_byte[1]), .B(second_byte[1]), .C_in(carry_in[1]), .Sum(sum_bytes[1]), .C_out(carry_out[1]));
full_adder FA_block2 (.A(first_byte[2]), .B(second_byte[2]), .C_in(carry_in[2]), .Sum(sum_bytes[2]), .C_out(carry_out[2]));
full_adder FA_block3 (.A(first_byte[3]), .B(second_byte[3]), .C_in(carry_in[3]), .Sum(sum_bytes[3]), .C_out(carry_out[3]));
full_adder FA_block4 (.A(first_byte[4]), .B(second_byte[4]), .C_in(carry_in[4]), .Sum(sum_bytes[4]), .C_out(carry_out[4]));
full_adder FA_block5 (.A(first_byte[5]), .B(second_byte[5]), .C_in(carry_in[5]), .Sum(sum_bytes[5]), .C_out(carry_out[5]));
full_adder FA_block6 (.A(first_byte[6]), .B(second_byte[6]), .C_in(carry_in[6]), .Sum(sum_bytes[6]), .C_out(carry_out[6]));
full_adder FA_block7 (.A(first_byte[7]), .B(second_byte[7]), .C_in(carry_in[7]), .Sum(sum_bytes[7]), .C_out(carry_out[7]));

//assign carry_in[0] = carry_out[7];

assign carry_in[1] = carry_out[0];
assign carry_in[2] = carry_out[1];
assign carry_in[3] = carry_out[2];
assign carry_in[4] = carry_out[3];
assign carry_in[5] = carry_out[4];
assign carry_in[6] = carry_out[5];
assign carry_in[7] = carry_out[6];


endmodule