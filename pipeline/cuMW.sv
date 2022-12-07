module cuMW(
    input logic                 clk,
    input logic                 RegWriteM,
    input logic     [1:0]       ResultSrcM,
    output logic                RegWriteW,
    output logic    [1:0]       ResultSrcW,
);

register #(1) RegWrite_regMW(
    .clk(clk),
    .in(RegWriteM),
    .out(RegWriteW)
);

register #(2) ResultSrc_regMW(
    .clk(clk),
    .in(ResultSrcM),
    .out(ResultSrcW)
);

endmodule
