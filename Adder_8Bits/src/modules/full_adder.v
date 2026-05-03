`timescale 1ms/1ps

`include "../modules/half_adder.v"

module full_adder (FA_in1, FA_in2, FA_cin, FA_sum, FA_cout);

    // inputs and outputs of the full adder
    input FA_in1, FA_in2, FA_cin;
    output FA_sum, FA_cout;

    // instantiation of 2 half adders (HA stands for Half Adder)
    half_adder half_adder_st1 (.HA_in1 (st1_HA_in1), .HA_in2 (st1_HA_in2), .HA_sum (st1_sum), .HA_cout (st1_c_out));
    half_adder half_adder_st2 (.HA_in1 (st2_HA_in1), .HA_in2 (st2_HA_in2), .HA_sum (st2_sum), .HA_cout (st2_c_out));

    // Assignement of all the circuitry making the full adder
    assign st1_HA_in1 = FA_in1;
    assign st1_HA_in2 = FA_in2;

    assign st2_HA_in1 = FA_cin; // to be checked!!!!! checked and it works
    assign st2_HA_in2 = st1_sum;

    assign FA_sum = st2_sum;

    or (FA_cout, st1_c_out, st2_c_out);

endmodule