module cuMV(
    input logic                 clk,
    input logic                 RegWriteM,
    input logic     [1:0]       ResultSrcM,

    output logic                RegWriteW,
    output logic    [1:0]       ResultSrcW,
);

// do we create register for each signal since each have different width size?
// A: No, parameter DATA_WIDTH can be instantiated when you instantiate reg.sv

reg #(1) RegWrite_regMW(
    .clk(clk),
    .in(RegWriteM),
    .out(RegWriteW)
);

reg #(2) ResultSrc_regMW(
    .clk(clk),
    .in(ResultSrcM),
    .out(ResultSrcW)
);

endmodule
