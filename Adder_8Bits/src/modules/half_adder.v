`timescale 1ns/1ps

module half_adder(HA_in1, HA_in2, HA_sum, HA_cout);

    input HA_in1, HA_in2;
    output HA_sum, HA_cout;

    xor (HA_sum, HA_in1, HA_in2);
    and (HA_cout, HA_in1, HA_in2);

endmodule