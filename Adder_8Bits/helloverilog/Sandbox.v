`timescale 1ns/1ps


module half_adder(in1, in2, sum, c_in);

    input in1, in2;
    output sum, c_in;

    xor (sum, in1, in2);
    and (c_in, in1, in2);

endmodule

module top_module;

    wire Sum;
    wire C_out;

half_adder half_adder_st1 (.in1 (st1_in1), .in2 (st1_in2), .sum (st1_sum), .c_in (st1_c_in));

half_adder half_adder_st2 (.in1 (st2_in1), .in2 (st2_in2), .sum (st2_sum), .c_in (st2_c_in));

assign st2_in1 = st1_c_in;
assign st2_in2 = st1_sum;

assign Sum = st2_sum;
and (C_out, st1_c_in, st2_c_in);

endmodule