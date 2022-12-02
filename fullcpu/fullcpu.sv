module fullcpu#(
    parameter  DATA_WIDTH = 32
) (
    input logic clk,
    input logic rst,
    output [DATA_WIDTH-1:0] a0
);

logic PCsrc;
logic [DATA_WIDTH-1:0] ImmOp;
logic [DATA_WIDTH-1:0] Instr;
logic EQ;
logic RegWrite;
logic [2:0] ALUctrl;
logic ALUsrc;
logic [2:0] ImmSrc;
logic MemWrite;
logic ResultSrc;
logic PC;

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
    .Zero(EQ),
    .RegWrite(RegWrite),
    .ALUctrl(ALUctrl),
    .ALUsrc(ALUsrc),
    .ImmSrc(ImmSrc),
    .PCsrc(PCsrc),
    .MemWrite(MemWrite),
    .ResultSrc(ResultSrc)
);

sign_extend signextend (
    .instr(Instr),
    .ImmSrc(ImmSrc),
    .ImmOp(ImmOp)
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
    .eq(EQ),
    .a0(a0)
);

endmodule 
