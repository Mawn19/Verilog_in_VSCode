// This is my first program "helloverilog.v" in VSCode with Verilog.
// Icarus Verilog is the tool to compile and run "helloverilog.v"
// iverilog -o helloverilog.vvp helloverilog.v
// vvp helloverilog.vvp
// gtkwave to open the simulation GUI

module helloverilog;
  initial 
    begin
      $display("Hello, Verilog!") ;
      $finish ;
    end
endmodule