`timescale 1ns/1ps
`include "half_adder.v"

module half_adder_tb;

reg a, b;
wire s,c;

half_adder uut(
    .s(s),
    .c(c),
    .a(a),
    .b(b)
    );

  initial 
    begin

        a = 1'b0;
        b = 1'b0;
        #2 a=1'b0 ; b=1'b1;
        #2 a=1'b1 ; b=1'b0;
        #2 a=1'b1 ; b=1'b1;
        
      $display("Test complete");
    end

  initial $monitor ("time=%g, s=%b, c=%b, a=%b, b=%b, $time, s, c, a, b");
  initial #10 $finish;


endmodule
