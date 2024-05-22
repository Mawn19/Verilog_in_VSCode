`timescale 1ms/1ps
`include "adder_8bits.v"

module adder_8bits_tb;

reg [7:0] full_a, full_b, full_c_in;
wire [7:0] full_s, full_c_out;

adder_8bits uut(

    .first_byte (full_a),
    .second_byte (full_b),
    .carry_in (full_c_in),
    .sum_bytes (full_s),
    .carry_out (full_c_out)
    );


  initial 
    begin

        $dumpfile("adder_8bits_tb.vcd");
        $dumpvars(0, adder_8bits_tb);

           full_a = 8'b0000_0001 ; full_b = 8'b0000_0000; full_c_in = 8'b0000_0000; // 1
        #1 full_a = 8'b0000_0000 ; full_b = 8'b0000_0001; full_c_in = 8'b0000_0000; // 1
        #1 full_a = 8'b0000_0001 ; full_b = 8'b0000_0010; full_c_in = 8'b0000_0000; // 3
        // #1 full_a = 8'b0000_1000 ; full_b = 8'b0000_0001; full_c_in = 8'b0000_0000;// 9
        // #1 full_a = 8'b0000_0010 ; full_b = 8'b0000_0010; full_c_in = 8'b0000_0100; // 2
        // #1 full_a = 8'b1000_0000 ; full_b = 8'b1000_0000; full_c_in = 8'b0000_0001; // 256 // to be checked
        
        #1 full_a = 8'b1111_1110 ; full_b = 8'b0000_0001; full_c_in = 8'b0000_0000; // 255
        #1 full_a = 8'b1111_1111 ; full_b = 8'b0000_0001; full_c_in = 8'b1111_1110; //255 + 1 overflow sum 0 carry_out 1

        // #1 full_a = 8'b1111_1111 ; full_b = 8'b0000_0001; full_c_in = 8'b1111_1110; // 256

        // #1 full_a = 8'b0000_0001 ; full_b = 8'b0000_0001; full_c_in = 8'b0000_0010; // 2
        // #1 full_a = 8'b0000_1111 ; full_b = 8'b0000_0001; full_c_in = 8'b0001_1110; // 16
        // #1 full_a = 8'b0000_1111 ; full_b = 8'b0000_0011; full_c_in = 8'b0001_1110; // 18

        // #1 full_a = 8'b0000_0000 ; full_b = 8'b0000_0000; full_c_in = 8'b0000_0000; 
        // #1 full_a = 8'b0000_0000 ; full_b = 8'b0000_0000; full_c_in = 8'b0000_0000; 
        // #1 full_a = 8'b0000_0000 ; full_b = 8'b0000_0000; full_c_in = 8'b0000_0000; 
        // #1 full_a = 8'b0000_0000 ; full_b = 8'b0000_0000; full_c_in = 8'b0000_0000; 


      $display("Test complete");
    end

  initial #12 $finish;


endmodule
