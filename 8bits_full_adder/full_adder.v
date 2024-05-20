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


`timescale 1ns/1ps

module half_adder(in1, in2, sum, c);

    input in1, in2;
    output sum, c;

    xor (sum, in1, in2);
    and (c, in1, in2);

endmodule

module full_adder (A, B, C_in, Sum, C_out);

input A, B, C_in;
output Sum, C_out;

half_adder half_adder_st1 (.in1 (st1_in1), .in2 (st1_in2), .sum (st1_sum), .c (st1_c_out));

half_adder half_adder_st2 (.in1 (st2_in1), .in2 (st2_in2), .sum (st2_sum), .c (st2_c_out));

assign st1_in1 = A;
assign st1_in2 = B;

assign st2_in1 = C_in; // to be checked!!!!! checked and it works
assign st2_in2 = st1_sum;

assign Sum = st2_sum;

or (C_out, st1_c_out, st2_c_out);

endmodule