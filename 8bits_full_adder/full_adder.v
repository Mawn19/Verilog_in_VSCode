// Project name: "8bits_full_adder"
// Date of creation: "20.05.2024"
// Designer name: Youness Maarouf

// IDE name: "MS Code"
// Synthetizer Tool: "Icarus"
// Signal vizualisation Tool: "GTK Wave"


//Short description:
// Implement a 8 bits full adder, after a half adder has been implemented and simulated.
// The 8 bits full adder could also be visualized within (Digital Logic Sim from Sebastian Lague)
// https://sebastian.itch.io/digital-logic-sim


// sum = c_in XOR (A XOR B)
// c_out = AB + c_in (A XOR B) 

`timescale 1ns/1ps

module full_adder(sum, c_out, c_in, num1, num2);


input  [7:0] num1, num2;
input c_in;
output [7:0] sum;
input c_out;

assign sum = c_in ^ (num1 ^ num2);
assign c_out = num1 & num2 + c_in & (num1 ^ num2);

endmodule