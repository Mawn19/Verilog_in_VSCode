`timescale 1ms/1ps
`include "full_adder.v"

module tb_full_adder;

reg tb_FA_in1, tb_FA_in2, tb_FA_cin;
wire tb_FA_sum, tb_FA_cout;

full_adder uut(

    .FA_in1 (tb_FA_in1),
    .FA_in2 (tb_FA_in2),
    .FA_cin (tb_FA_cin),
    .FA_sum (tb_FA_sum),
    .FA_cout (tb_FA_cout)
    );

  initial 
    begin

        $dumpfile("tb_full_adder.vcd");
        $dumpvars(0, tb_full_adder);

           tb_FA_in1 = 1'b0 ; tb_FA_in2 = 1'b0; tb_FA_cin = 1'b0; 
        #1 tb_FA_in1 = 1'b0 ; tb_FA_in2 = 1'b0; tb_FA_cin = 1'b1;
        #1 tb_FA_in1 = 1'b0 ; tb_FA_in2 = 1'b1; tb_FA_cin = 1'b0;
        #1 tb_FA_in1 = 1'b0 ; tb_FA_in2 = 1'b1; tb_FA_cin = 1'b1;
        #1 tb_FA_in1 = 1'b1 ; tb_FA_in2 = 1'b0; tb_FA_cin = 1'b0;
        #1 tb_FA_in1 = 1'b1 ; tb_FA_in2 = 1'b0; tb_FA_cin = 1'b1;
        #1 tb_FA_in1 = 1'b1 ; tb_FA_in2 = 1'b1; tb_FA_cin = 1'b0;
        #1 tb_FA_in1 = 1'b1 ; tb_FA_in2 = 1'b1; tb_FA_cin = 1'b1;


      $display("Test complete");
    end

  initial #8 $finish;


endmodule
