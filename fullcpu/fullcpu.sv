module fullcpu#(
    parameter  DATA_WIDTH = 32
) (
    input logic                     clk,
    input logic                     rst,
    output logic [DATA_WIDTH-1:0]    a0
);

logic PCsrc;
logic [DATA_WIDTH-1:0] ImmOp;
logic [DATA_WIDTH-1:0] Instr;
logic Zero;
logic RegWrite;
logic [2:0] ALUctrl;
logic ALUsrc;
logic [2:0] ImmSrc;
logic MemWrite;
logic ResultSrc;
logic PC;
logic jalmuxSel;

top blue(
    .PCsrc(PCsrc),
    .clk(clk),
    .rst(rst),
    .ImmOp(ImmOp),
    .RD(Instr), // output
    .PC_out(PC) // output 
);

control_unit controlunit(
    .op(Instr[6:0]),
    .funct3(Instr[14:12]),
    .funct7(Instr[30]),
    .Zero(Zero),
    .RegWrite(RegWrite),
    .ALUctrl(ALUctrl),
    .ALUsrc(ALUsrc),
    .ImmSrc(ImmSrc),
    .PCsrc(PCsrc),
    .MemWrite(MemWrite),
    .ResultSrc(ResultSrc),
    .jalmuxSel(jalmuxSel)
);

sign_extend signextend (
    .instr(Instr),
    .ImmSrc(ImmSrc),
    .ImmExt(ImmOp)
);

topregalu topregalu (
    .clk(clk),
    .rs1(Instr[19:15]),
    .rs2(Instr[24:20]),
    .rd(Instr[11:7]),
    .RegWrite(RegWrite),
    .PC(PC),
    .ALUsrc(ALUsrc),
    .ResultSrc(ResultSrc),
    .MemWrite(MemWrite),
    .ALUCtrl(ALUctrl),
    .ImmOp(ImmOp),
    .eq(Zero),
    .a0(a0),
    .jalmuxSel(jalmuxSel)
);

endmodule 
