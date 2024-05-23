`timescale 1ms/1ps
`include "adder_8bits.v"

module tb_adder_8bits;

reg [7:0] tb_adder_in1, tb_adder_in2, tb_adder_cin;
wire [7:0] tb_adder_sum, tb_adder_cout;

adder_8bits uut(

    .Adder_in1 (tb_adder_in1),
    .Adder_in2 (tb_adder_in2),
    .Adder_cin (tb_adder_cin),
    .Adder_sum (tb_adder_sum),
    .Adder_cout (tb_adder_cout)
    );


  initial 
    begin

        $dumpfile("tb_adder_8bits.vcd");
        $dumpvars(0, tb_adder_8bits);

           tb_adder_in1 = 8'b0000_0001 ; tb_adder_in2 = 8'b0000_0000; //tb_adder_cin = 8'b0000_0000; // 1
        #1 tb_adder_in1 = 8'b0000_0001 ; tb_adder_in2 = 8'b0000_0001; tb_adder_cin = 8'b0000_0010; // 2
        #1 tb_adder_in1 = 8'd100 ; tb_adder_in2 = 8'd1; //tb_adder_cin = 8'b0000_0000; // 101
        #1 tb_adder_in1 = 8'd100 ; tb_adder_in2 = 8'd1; tb_adder_cin = 8'b0000_0000; // 101

        //    tb_adder_in1 = 8'b0000_0001 ; tb_adder_in2 = 8'b0000_0000; tb_adder_cin = 8'b0000_0000; // 1
        // #1 tb_adder_in1 = 8'b0000_0000 ; tb_adder_in2 = 8'b0000_0001; tb_adder_cin = 8'b0000_0000; // 1
        // #1 tb_adder_in1 = 8'b0000_0001 ; tb_adder_in2 = 8'b0000_0010; tb_adder_cin = 8'b0000_0000; // 3
        // #1 tb_adder_in1 = 8'b0000_1000 ; tb_adder_in2 = 8'b0000_0001; tb_adder_cin = 8'b0000_0000;// 9
        // #1 tb_adder_in1 = 8'b0000_0010 ; tb_adder_in2 = 8'b0000_0010; tb_adder_cin = 8'b0000_0100; // 2
        // #1 tb_adder_in1 = 8'b1000_0000 ; tb_adder_in2 = 8'b1000_0000; tb_adder_cin = 8'b0000_0001; // 256 // to be checked
        
        // #1 tb_adder_in1 = 8'b1111_1110 ; tb_adder_in2 = 8'b0000_0001; tb_adder_cin = 8'b0000_0000; // 255
        // #1 tb_adder_in1 = 8'b1111_1111 ; tb_adder_in2 = 8'b0000_0001; tb_adder_cin = 8'b1111_1110; //255 + 1 overflow sum 0 carry_out 1

        // #1 tb_adder_in1 = 8'b1111_1111 ; tb_adder_in2 = 8'b0000_0001; tb_adder_cin = 8'b1111_1110; // 256

        // #1 tb_adder_in1 = 8'b0000_0001 ; tb_adder_in2 = 8'b0000_0001; tb_adder_cin = 8'b0000_0010; // 2
        // #1 tb_adder_in1 = 8'b0000_1111 ; tb_adder_in2 = 8'b0000_0001; tb_adder_cin = 8'b0001_1110; // 16
        // #1 tb_adder_in1 = 8'b0000_1111 ; tb_adder_in2 = 8'b0000_0011; tb_adder_cin = 8'b0001_1110; // 18

        // #1 tb_adder_in1 = 8'b0000_0000 ; tb_adder_in2 = 8'b0000_0000; tb_adder_cin = 8'b0000_0000; 
        // #1 tb_adder_in1 = 8'b0000_0000 ; tb_adder_in2 = 8'b0000_0000; tb_adder_cin = 8'b0000_0000; 
        // #1 tb_adder_in1 = 8'b0000_0000 ; tb_adder_in2 = 8'b0000_0000; tb_adder_cin = 8'b0000_0000; 
        // #1 tb_adder_in1 = 8'b0000_0000 ; tb_adder_in2 = 8'b0000_0000; tb_adder_cin = 8'b0000_0000; 


      $display("Test complete");
    end

  initial #12 $finish;


endmodule
