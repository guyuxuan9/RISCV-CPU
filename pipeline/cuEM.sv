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
// A: No, parameter DATA_WIDTH can be instantiated when you instantiate reg.sv

reg #(1) RegWrite_regEM(
    .clk(clk),
    .in(RegWriteE),
    .out(RegWriteM)
);

reg #(2) ResultSrc_regEM(
    .clk(clk),
    .in(ResultSrcE),
    .out(ResultSrcM)
);

reg #(1) MemWrite_regEM(
    .clk(clk),
    .in(MemWriteE),
    .out(MemWriteM)
);

endmodule
