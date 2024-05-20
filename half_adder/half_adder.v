`timescale 1ns/1ps

module half_adder(half_a, half_b,s,c);
input half_a, half_b;
output s, c;
xor (s, half_a, half_b);
and (c, half_a, half_b);
endmodule
