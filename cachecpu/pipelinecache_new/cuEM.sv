module cuEM(
    input logic                 clk,
    input logic                 RegWriteE,
    input logic     [1:0]       ResultSrcE,
    input logic                 MemWriteE,
    input logic                 cache_WEE,
    output logic                RegWriteM,
    output logic    [1:0]       ResultSrcM,
    output logic                MemWriteM,
    output logic                cache_WEM
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

register #(1) cache_WE_regEM(
    .clk(clk),
    .in(cache_WEE),
    .out(cache_WEM)
);

endmodule
