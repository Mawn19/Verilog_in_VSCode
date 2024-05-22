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

           full_a = 8'b0000_0000 ; full_b = 8'b0000_0000; full_c_in = 8'b0000_0000; // 0 = 0 + 0 
        #1 full_a = 8'b0000_0001 ; full_b = 8'b0000_0001; full_c_in = 8'b0000_0010; // 2 = 1 + 1
        #1 full_a = 8'b0000_0010 ; full_b = 8'b0000_0010; full_c_in = 8'b0000_0100; // 4 = 2 + 2
        #1 full_a = 8'b0000_1111 ; full_b = 8'b0000_0001; full_c_in = 8'b0000_1111; // 16 = 15 + 1
        #1 full_a = 8'b1111_1111 ; full_b = 8'b0000_0001; full_c_in = 8'b0100_0000; // 0 = 255 + 1
        // #1 full_a = 8'b0000_0000 ; full_b = 8'b0000_0000; full_c_in = 8'b0000_0000; 
        // #1 full_a = 8'b0000_0000 ; full_b = 8'b0000_0000; full_c_in = 8'b0000_0000; 
        // #1 full_a = 8'b0000_0000 ; full_b = 8'b0000_0000; full_c_in = 8'b0000_0000; 
        // #1 full_a = 8'b0000_0000 ; full_b = 8'b0000_0000; full_c_in = 8'b0000_0000; 


      $display("Test complete");
    end

  initial #8 $finish;


endmodule
