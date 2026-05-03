# Full Adder build

Steps to create an 8 bits full adder:

To create a full adder, you need to create a half adder at first, then combine two of them
to get the full adder.

1- half_adder_st1
2- half_adder_st2
3- full_adder_temp Module
4- Top_module: Instantiante 8 full adders (full_adder_inst1, full_adder_inst2, ..., full_adder_instn)
to create an 8 bits full adder.

create a folder for the 8-Bit adder with documentation
> <https://cvbl.iiita.ac.in/sks/coa-files/tutorial/Tutorial-5.pdf>

## Short description

From full_adder.v
// Project name: "8bits_full_adder"
// Date of creation: "20.05.2024"
// Designer name: Youness Maarouf

// IDE name: "VSCode"
// Synthetizer Tool: "Icarus"
// Signal vizualisation Tool: "GTK Wave"

//Short description:
// Implement an 8 bits full adder, after a half adder has been implemented and simulated.
// The 8 bits full adder could also be visualized within (Digital Logic Sim from Sebastian Lague)
// <https://sebastian.itch.io/digital-logic-sim>
