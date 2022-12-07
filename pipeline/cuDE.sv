module cuDE(
    input logic                 clk,
    input logic                 RegWriteD,
    input logic     [1:0]       ResultSrcD,
    input logic                 MemWriteD,
    input logic                 JumpD,
    input logic                 BranchD,
    input logic     [2:0]       ALUControlD,
    input logic                 ALUSrcD,
    input logic                 JalrmuxSelD,

    output logic                RegWriteE,
    output logic    [1:0]       ResultSrcE,
    output logic                MemWriteE,
    output logic                JumpE,
    output logic                BranchE,
    output logic    [2:0]       ALUControlE,
    output logic                ALUSrcE,
    output logic                JalrmuxSelE
);

register #(1) RegWrite_regDE(
    .clk(clk),
    .in(RegWriteD),
    .out(RegWriteE)
);

register #(2) ResultSrc_regDE(
    .clk(clk),
    .in(ResultSrcD),
    .out(ResultSrcE)
);

register #(1) MemWrite_regDE(
    .clk(clk),
    .in(MemWriteD),
    .out(MemWriteE)
);

register #(1) Jump_regDE(
    .clk(clk),
    .in(JumpD),     
    .out(JumpE)
);

register #(1) Branch_regDE(
    .clk(clk),
    .in(BranchD),
    .out(BranchE)
); 

register #(3) ALUControl_regDE(
    .clk(clk),
    .in(ALUControlD),
    .out(ALUControlE)
);

register #(1) ALUSrc_regDE(
    .clk(clk),
    .in(ALUSrcD),
    .out(ALUSrcE)
);

register #(1) JalrMuxSel_regDE(
    .clk(clk),
    .in(JalrmuxSelD),
    .out(JalrmuxSelE)
);

endmodule
