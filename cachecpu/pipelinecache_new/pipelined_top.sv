module pipelined_top#(
    parameter  DATA_WIDTH = 32
) (
    input logic                         clk,
    input logic                         rst,
    input logic                         trigger,
    output logic    [DATA_WIDTH-1:0]    a0
);

logic                           PCSrcE; // output from execution stage
logic [31:0]                    PCTargetE; // output from execution stage
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
logic [4:0]                     RdE;

logic                           RegWriteE;
logic [1:0]                     ResultSrcE;
logic                           MemWriteE;
logic                           JumpE;
logic                           BranchE;
logic [2:0]                     ALUControlE;
logic                           ALUSrcE;

logic                           ZeroE;
logic [DATA_WIDTH-1:0]          ALUResultM;
logic [DATA_WIDTH-1:0]          WriteDataM;
logic [DATA_WIDTH-1:0]          PCPlus4M;
logic [DATA_WIDTH-1:0]          DataMemOut;
logic [4:0]                     RdM;
logic                           RegWriteM;
logic [1:0]                     ResultSrcM;
logic                           MemWriteM;

logic [DATA_WIDTH-1:0]          MemOut;
logic [DATA_WIDTH-1:0]          ALUResultW;
logic [DATA_WIDTH-1:0]          ReadDataW;
logic [DATA_WIDTH-1:0]          PCPlus4W;
logic [1:0]                     ResultSrcW;

Fetch fetch(
    .PCSrc(PCSrcE),
    .clk(clk),
    .rst(rst),
    .trigger(trigger),
    .PCTarget(PCTargetE),
    .jalrmuxSel(jalrmuxSelE),
    .ALUResult(ALUResultE),
    .RD(Instr),                 // output
    .PCPlus4(PCPlus4),          // output
    .PC(PC)                     // output
);

topFD FD_reg(
    .clk(clk),
    .PCF(PC),
    .InstrF(Instr),
    .PCPlus4F(PCPlus4),
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
    .jalrmuxSelD(JalrmuxSelD),
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

cuDE CUDE(
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
    .JalrmuxSelE(jalrmuxSelE)
);

PCSrcLogic PCSrcE_logic(
    .Branch(BranchE),
    .Zero(ZeroE),
    .Jump(JumpE),
    .PCSrc(PCSrcE)
);

Execute execute(
    .ALUControlE(ALUControlE),
    .ALUSrcE(ALUSrcE),
    .RD1E(RD1E),
    .RD2E(RD2E),
    .PCE(PCE),
    .ImmExtE(ImmExtE),
    .ALUResult(ALUResultE),
    .ZeroE(ZeroE),
    .PCTargetE(PCTargetE)
);

topEM EM_reg(
    .clk(clk),
    .ALUResultE(ALUResultE),
    .WriteDataE(RD2E),
    .PCPlus4E(PCPlus4E),
    .RdE(RdE),
    .ALUResultM(ALUResultM),
    .WriteDataM(WriteDataM),
    .PCPlus4M(PCPlus4M),
    .RdM(RdM)
);

cuEM CUEM(
    .clk(clk),
    .RegWriteE(RegWriteE),
    .ResultSrcE(ResultSrcE),
    .MemWriteE(MemWriteE),
    .RegWriteM(RegWriteM),
    .ResultSrcM(ResultSrcM),
    .MemWriteM(MemWriteM)
);

cachemem CacheMem(
    .memaddr(ALUResultM),
    .inputdata(DataMemOut),
    .dataout(MemOut)
);

datamem DataMem(
    .clk(clk),
    .WE(MemWriteM),
    .A(ALUResultM),
    .WD(WriteDataM),
    .RD(DataMemOut)
);

topMW MW_reg(
    .clk(clk),
    .ALUResultM(ALUResultM),
    .ReadDataM(MemOut),
    .PCPlus4M(PCPlus4M),
    .RdM(RdM),
    .ALUResultW(ALUResultW),
    .ReadDataW(ReadDataW),
    .PCPlus4W(PCPlus4W),
    .RdW(RdW)
);

cuMW CUMW(
    .clk(clk),
    .RegWriteM(RegWriteM),
    .ResultSrcM(ResultSrcM),
    .RegWriteW(RegWriteW),
    .ResultSrcW(ResultSrcW)
);

mux_3inputs resultmux(
    .d0(ALUResultW),
    .d1(ReadDataW),
    .d2(PCPlus4W),
    .s(ResultSrcW),
    .out(ResultW)
);

endmodule
