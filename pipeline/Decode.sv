module Decode #(
    parameter DATA_WIDTH = 32
)(
    input logic                             clk,
    input logic  [DATA_WIDTH-1:0]           InstrD,
    input logic  [4:0]                      RdW, // output from write back stage
    input logic                             RegWriteW, // output from write back stage
    input logic  [DATA_WIDTH-1:0]           ResultW, // output from write back stage
    
    output logic [DATA_WIDTH-1:0]           RD1,
    output logic [DATA_WIDTH-1:0]           RD2,
    output logic [DATA_WIDTH-1:0]           a0,
    output logic [4:0]                      RdD,
    output logic                            RegWriteD,
    output logic [1:0]                      ResultSrcD,
    output logic                            MemWriteD,
    output logic                            JumpD,
    output logic                            BranchD,
    output logic                            ALUControlD,
    output logic                            ALUSrcD,
    output logic                            ImmSrcD,
    output logic                            jalrmuxSelD,
    output logic [DATA_WIDTH-1:0]           ImmExtD
);



control_unit cu(
    .op(InstrD[6:0]),       // input
    .funct3(InstrD[14:12]), // input
    .funct7(InstrD[30]),    // input
    .RegWrite(RegWriteD),
    .ResultSrc(ResultSrcD),
    .MemWrite(MemWriteD),
    .Jump(JumpD),
    .Branch(BranchD),
    .ALUControl(ALUControlD),
    .ALUSrc(ALUSrcD),
    .ImmSrc(ImmSrcD),
    .jalrmuxSel(jalrmuxSelD)
);

regfile RegFile(
    .clk(clk),
    .A1(InstrD[19:15]),
    .A2(InstrD[24:20]),
    .A3(RdW),
    .WE3(RegWriteW),
    .WD3(ResultW),
    .RD1(RD1), //output
    .RD2(RD2), //output
    .a0(a0) // output
);

sign_extend Extend(
    .instr(InstrD[31:7]),
    .ImmSrc(ImmSrcD),
    .ImmExt(ImmExtD) // output
);

assign RdD = InstrD[11:7];
endmodule
