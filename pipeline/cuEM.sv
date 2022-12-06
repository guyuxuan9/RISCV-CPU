module cuEM(
    input logic                 clk,
    input logic                 RegWriteE,
    input logic     [1:0]       ResultSrcE,
    input logic                 MemWriteE,

    output logic                RegWriteM,
    output logic    [1:0]       ResultSrcM,
    output logic                MemWriteM,
);

// do we create register for each signal since each have different width size?

endmodule
