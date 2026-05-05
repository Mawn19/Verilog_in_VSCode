`include "complements.v"

module complements_tb;

   // Declare internal reg variables to drive design inputs
   // Declare wire signals to collect design output
   // Declare other internal variables used in testbench
   reg [7:0] candidate;
   wire [7:0] comp_one;
   wire [7:0] comp_two;
   integer i;

   // Instantiate the complements module
   complements comp ( .candidate (candidate), .comp_one (comp_one), .comp_two (comp_two) );

   // This initial block is the stimulus
   initial begin
      // Launch a monitor in background to display values to log whenever candidate/result changes
      $monitor ("[%0t] candidate=0x%0h comp_one=0x%0h comp_two=0x%0h", $time, candidate, comp_one, comp_two);

        $dumpfile("complements_tb.vcd");
        $dumpvars(0, complements_tb);

   	  // 1. At time 0, drive random values to candidate
      candidate <= $random;

      // 2. Change the value of candidate after every 5ns
      for (i = 1; i < 4; i=i+1) begin
         #5 candidate <= $random;
      end

      // 3. After Step2 is over, wait for 5ns and finish simulation
      #5 $finish;
   end
endmodule
