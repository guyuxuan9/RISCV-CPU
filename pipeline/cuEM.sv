module cuEM(
    input logic                 clk,
    input logic                 RegWriteE,
    input logic     [1:0]       ResultSrcE,
    input logic                 MemWriteE,
    output logic                RegWriteM,
    output logic    [1:0]       ResultSrcM,
    output logic                MemWriteM,
);

register #(1) RegWrite_regEM(
    .clk(clk),
    .in(RegWriteE),
    .out(RegWriteM)
);

register #(2) ResultSrc_regEM(
    .clk(clk),
    .in(ResultSrcE),
    .out(ResultSrcM)
);

register #(1) MemWrite_regEM(
    .clk(clk),
    .in(MemWriteE),
    .out(MemWriteM)
);

endmodule
