`timescale 1ns/1ps
`include "half_adder.v"

module tb_half_adder;

reg tb_HA_in1, tb_HA_in2;
wire s,c;

half_adder uut(
    .HA_sum (tb_HA_sum),
    .HA_cout (tb_HA_cout),
    .HA_in1 (tb_HA_in1),
    .HA_in2 (tb_HA_in2)
    );

  initial 
    begin

        $dumpfile("tb_half_adder.vcd");
        $dumpvars(0, tb_half_adder);

           tb_HA_in1 = 1'b0  ; tb_HA_in2 = 1'b0;
        #2 tb_HA_in1 = 1'b0  ; tb_HA_in2 = 1'b1;
        #2 tb_HA_in1 = 1'b1  ; tb_HA_in2 = 1'b0;
        #2 tb_HA_in1 = 1'b1  ; tb_HA_in2 = 1'b1;
        
      $display("Test complete");
    end

  //initial $monitor ("time=%g, s=%b, c=%b, tb_HA_in1=%b, tb_HA_in2=%b, $time, s, c, tb_HA_in1, tb_HA_in2");
  initial #10 $finish;


endmodule
