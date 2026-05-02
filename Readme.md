# README

The project "Verilog in VS Code" is a workplace to learn and practice Verilog within VSCode.
At first stage, this project is saved locally. Later, this should be handled via Github.

13.05.2024
Today, the Verilog_in_VSCode folder has been pushed to Github. See source of doing in [2]

## iverilog & gtkwave

Both icarus verilog and gtkwave installation are required for the following choosen vscode extensions.
The two extensions are very basic and intended to run, compile verilog pragrams with some noticed differences:

dglog: Run Verilog/SystemVerilog testbench with Icarus Verilog and GTKWave support.

- The extension icons are only shown if the verilog program is highlited (linter availibility is required)
- Centrilized build/ folder on parent project level does contain all the outputs (.v.out and .vcd) for different programs
- Compiles and runs program and then lunch gtkwave

Verilog Compiler & Runner: Verilog HDL Language Support for Visual Studio Code.

- Different build/ folder for modules and for testbenches
- It does hilight the code, this is not mentioned in the project description! This allows dglog to function :)
- Compiles and runs program or all programs

### VaporView

I just added another nice promising vcd viewer extension:
VaporView: Waveform Viewer for VS code - Supports VCD, FST, and GHW formats

#### Sources

Verilog HDL - Installing and Testing Icarus Verilog + GTKWave
[1] <https://www.youtube.com/watch?v=3Xm6fgKAO94&t=7s>
[2] <https://www.youtube.com/watch?v=WgCoEHMa6zU>
