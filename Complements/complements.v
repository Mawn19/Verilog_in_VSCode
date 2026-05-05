module complements(candidate, comp_one, comp_two);

    input [7:0] candidate;
    output [7:0] comp_one;
    output [7:0] comp_two;

    assign comp_one = ~candidate;
    assign comp_two = ~candidate + 1;

endmodule
