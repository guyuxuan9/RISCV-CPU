module cuMW(
    input logic                 clk,
    input logic                 RegWriteM,
    input logic     [1:0]       ResultSrcM,
    output logic                RegWriteW,
    output logic    [1:0]       ResultSrcW,
);

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
