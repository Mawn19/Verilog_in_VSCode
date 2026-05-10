`include "bin2gray.v"

module tb_bin2gray;

    // Declare internal reg variables to drive design inputs
    // Declare wire signals to collect design output
    // Declare other internal variables used in testbench
    reg [3:0] binNumb;
    wire [3:0] grayNumb;
    
    // Instantiate one of the designs, in this case, we have used the design with case statement
    // Connect testbench variables declared above with those in the design
    bin2gray_mod2  bin2gray0 (   .binNumb (binNumb),
                                    .grayNumb (grayNumb));
    
    // This initial block is the stimulus
    initial begin
        // Launch a monitor in background to display values to log whenever binNumb/grayNumb changes
        $monitor ("[%0t] binNumb=0x%0h grayNumb=0x%0h", $time, binNumb, grayNumb);
    
          $dumpfile("tb_bin2gray.vcd");
          $dumpvars(0, tb_bin2gray);
    
    	  // 1. At time 0, drive random values to binNumb
        binNumb <= $random;
    
        // 2. Change the value of binNumb after every 5ns for 10 times
        repeat (10) begin
            #5 binNumb <= $random;
        end
    
        // 3. After Step2 is over, wait for 5ns and finish simulation
        #5 $finish;
    end

endmodule