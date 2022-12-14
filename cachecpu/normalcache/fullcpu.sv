module fullcpu#(
    parameter  DATA_WIDTH = 32
) (
    input logic                         clk,
    input logic                         rst,
    input logic                         trigger,
    output logic    [DATA_WIDTH-1:0]    a0
);

logic                   PCSrc;
logic [DATA_WIDTH-1:0]  ImmOp;
logic [DATA_WIDTH-1:0]  Instr;
logic                   Zero;
logic                   RegWrite;
logic [2:0]             ALUControl;
logic                   ALUSrc;
logic [2:0]             ImmSrc;
logic                   MemWrite;
logic                   ResultSrc;
logic [31:0]            PC;
logic                   jalmuxSel;
logic                   jalrmuxSel;     //  =1 if the instruction is jalr, =0 otherwise
logic [31:0]            rd1;

top blue(
    .PCSrc(PCSrc),
    .clk(clk),
    .rst(rst),
    .trigger(trigger),
    .ImmOp(ImmOp),
    .jalrmuxSel(jalrmuxSel),
    .rd1(rd1),
    .RD(Instr), // output
    .PC_out(PC) // output 
);

control_unit controlunit(
    .op(Instr[6:0]),
    .funct3(Instr[14:12]),
    .funct7(Instr[30]),
    .Zero(Zero),
    .RegWrite(RegWrite),
    .ImmSrc(ImmSrc),
    .ALUControl(ALUControl),
    .ALUSrc(ALUSrc),
    .MemWrite(MemWrite),
    .ResultSrc(ResultSrc),
    .PCSrc(PCSrc),
    .jalmuxSel(jalmuxSel),
    .jalrmuxSel(jalrmuxSel)
);

sign_extend signextend (
    .instr(Instr[31:7]),
    .ImmSrc(ImmSrc),
    .ImmExt(ImmOp)
);

topregalu topregalu (
    .clk(clk),
    .rs1(Instr[19:15]),
    .rs2(Instr[24:20]),
    .rd(Instr[11:7]),
    .RegWrite(RegWrite),
    .ALUSrc(ALUSrc),
    .ResultSrc(ResultSrc),
    .MemWrite(MemWrite),
    .ALUControl(ALUControl),
    .ImmOp(ImmOp),
    .PC(PC),
    .jalmuxSel(jalmuxSel),
    .eq(Zero),
    .a0(a0),
    .rd1(rd1)
);

endmodule 
