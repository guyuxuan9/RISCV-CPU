module pipelined_top#(
    parameter  DATA_WIDTH = 32
) (
    input logic                         clk,
    input logic                         rst,
    input logic                         trigger,
    output logic    [DATA_WIDTH-1:0]    a0
);

logic                           PCSrcE; // output from execution stage
logic                           PCTargetE; // output from execution stage
logic                           jalrmuxSelE; // output from execution stage
logic [DATA_WIDTH-1:0]          ALUResultE;
logic [DATA_WIDTH-1:0]          Instr;
logic [31:0]                    PCPlus4;
logic [31:0]                    PC;
logic [31:0]                    PCD;
logic [31:0]                    InstrD;
logic [31:0]                    PCPlus4D;

logic [4:0]                     RdW; // output from write back stage
logic                           RegWriteW; // output from write back stage
logic [DATA_WIDTH-1:0]          ResultW; // output from write back stage
logic [DATA_WIDTH-1:0]          RD1D;
logic [DATA_WIDTH-1:0]          RD2D;
logic [4:0]                     RdD;

logic                           clk;
logic                           RegWriteD;
logic [1:0]                     ResultSrcD;
logic                           MemWriteD;
logic                           JumpD;
logic                           BranchD;
logic [2:0]                     ALUControlD;
logic                           ALUSrcD;
logic                           JalrmuxSelD;
logic [DATA_WIDTH-1:0]          ImmExtD;

logic [DATA_WIDTH-1:0]          RD1E;
logic [DATA_WIDTH-1:0]          RD2E;
logic [DATA_WIDTH-1:0]          PCE;
logic [DATA_WIDTH-1:0]          ImmExtE;
logic [DATA_WIDTH-1:0]          PCPlus4E;
logic [4:0]                     RdE

logic                           RegWriteE,
logic [1:0]                     ResultSrcE,
logic                           MemWriteE,
logic                           JumpE,
logic                           BranchE,
logic [2:0]                     ALUControlE,
logic                           ALUSrcE,
logic                           JalrmuxSelE

Fetch fetch(
    .PCSrc(PCSrcE),
    .clk(clk),
    .rst(rst),
    .trigger(trigger),
    .PCTarget(PCTargetE),
    .jalrmuxSel(jalrmuxSelE),
    .ALUResult(ALUResultE),
    .RD(Instr),         // output
    .PCPlus4(PCPlus4)   // output
    .PC(PC)             // output
);

topFD FD_reg(
    .clk(clk),
    .PCF(PC),
    .InstrF(Instr),
    .PCPlus4(PCPlus4),
    .PCD(PCD),
    .InstrD(InstrD),
    .PCPlus4D(PCPlus4D)
);

Decode decode(
    .clk(clk),
    .InstrD(InstrD),
    .RdW(RdW),
    .RegWriteW(RegWriteW),
    .ResultW(ResultW),
    .RD1(RD1D),
    .RD2(RD2D),
    .a0(a0),
    .RdD(RdD),
    .RegWriteD(RegWriteD),
    .ResultSrcD(ResultSrcD),
    .MemWriteD(MemWriteD),
    .JumpD(JumpD),
    .BranchD(BranchD),
    .ALUControlD(ALUControlD),
    .ALUSrcD(ALUSrcD),
    .JalrmuxSelD(JalrmuxSelD),
    .ImmExtD(ImmExtD)
);

topDE DE_reg(
    .clk(clk),
    .RD1D(RD1D),
    .RD2D(RD2D),
    .PCD(PCD),
    .ImmExtD(ImmExtD),
    .PCPlus4D(PCPlus4D),
    .RdD(RdD),  // A3
    .RD1E(RD1E),
    .RD2E(RD2E),
    .PCE(PCE),
    .ImmExtE(ImmExtE),
    .PCPlus4E(PCPlus4E),
    .RdE(RdE)
);

top cuDE(
    .clk(clk),
    .RegWriteD(RegWriteD),
    .ResultSrcD(ResultSrcD),
    .MemWriteD(MemWriteD),
    .JumpD(JumpD),
    .BranchD(BranchD),
    .ALUControlD(ALUControlD),
    .ALUSrcD(ALUSrcD),
    .JalrmuxSelD(JalrmuxSelD),
    .RegWriteE(RegWriteE),
    .ResultSrcE(ResultSrcE),
    .MemWriteE(MemWriteE),
    .JumpE(JumpE),
    .BranchE(BranchE),
    .ALUControlE(ALUControlE),
    .ALUSrcE(ALUSrcE),
    .JalrmuxSelE(JalrmuxSelE)
);

endmodule
