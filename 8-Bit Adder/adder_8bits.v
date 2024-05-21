`timescale 1ms/1ps
`include "full_adder.v"

module adder_8bits (
    input  [7:0] first_byte, second_byte,
    input  carry_in,
    output [7:0] sum_bytes,
    output [7:0] carry_out
);

full_adder FA_block1 (.A(first_byte[0]), .B(second_byte[0]), .C_in(carry_in), .Sum(sum_bytes[0]), .C_out(carry_out[0]));

endmodule