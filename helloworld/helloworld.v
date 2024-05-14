// This is my first program "helloworld.v" in MS Code with Verilog.
// To simulate "helloworld.v" you need to use Icartus (please download it before the simulation)
// iverilog -o helloword.vvp helloworld.v
// vvp helloworld.vvp
// gtkwave to open the simulation GUI

module helloword;
  initial 
    begin
      $display("Hello, World");
      $finish ;
    end
endmodule