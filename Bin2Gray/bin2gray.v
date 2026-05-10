module bin2gray_mod1(binNumb, grayNumb);
  input [3:0] binNumb;
  output [3:0] grayNumb;

// The most significant bit of the gray code is the same as the most significant bit of the binary number
// The next bit of the gray code is the XOR of the most significant bit and the next bit of the binary number
// The next bit of the gray code is the XOR of the next bit of the binary number and the next bit of the binary number
// The least significant bit of the gray code is the XOR of the next bit of the binary number and the least significant bit of
    assign grayNumb[3] = binNumb[3];
    assign grayNumb[2] = binNumb[3] ^ binNumb[2];
    assign grayNumb[1] = binNumb[2] ^ binNumb[1];
    assign grayNumb[0] = binNumb[1] ^ binNumb[0];

endmodule

module bin2gray_mod2(binNumb, grayNumb);

/*
Gray[n-1] = Binary[n-1]  (MSB, just copy)
Gray[i] = Binary[i+1] ⊕ Binary[i]  (for i = n-2 down to 0)

Where ⊕ represents XOR operation
*/

  input [3:0] binNumb;
  output [3:0] grayNumb;

    assign grayNumb[3] = binNumb[3];
    for (genvar i = 2; i >= 0; i = i - 1) begin
        assign grayNumb[i] = binNumb[i+1] ^ binNumb[i];
    end

endmodule