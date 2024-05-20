`timescale 1ns/1ps
`include "full_adder.v"

module full_adder_tb;

reg full_a, full_b, full_c_in;
wire full_s, full_c_out;

full_adder uut(

    .A (full_a),
    .B (full_b),
    .C_in (full_c_in),
    .Sum (full_s),
    .C_out (full_c_out)
    );


  initial 
    begin

        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);

           full_a = 1'b0 ; full_b = 1'b0; full_c_in = 1'b0; 
        #2 full_a = 1'b0 ; full_b = 1'b0; full_c_in = 1'b1;
        #2 full_a = 1'b0 ; full_b = 1'b1; full_c_in = 1'b0;
        #2 full_a = 1'b0 ; full_b = 1'b1; full_c_in = 1'b1;
        #2 full_a = 1'b1 ; full_b = 1'b0; full_c_in = 1'b0;
        #2 full_a = 1'b1 ; full_b = 1'b0; full_c_in = 1'b1;
        #2 full_a = 1'b1 ; full_b = 1'b1; full_c_in = 1'b0;
        #2 full_a = 1'b1 ; full_b = 1'b1; full_c_in = 1'b1;


      $display("Test complete");
    end

  initial #10 $finish;


endmodule
