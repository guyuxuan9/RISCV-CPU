module topregalu #(
    parameter   DATA_WIDTH = 32,
                ADDRESS_WIDTH = 5
)(
    // interface signals
    input logic                                      clk,
    input logic        [ADDRESS_WIDTH-1:0]           rs1,           
    input logic        [ADDRESS_WIDTH-1:0]           rs2,      
    input logic        [ADDRESS_WIDTH-1:0]           rd,
    input logic                                      RegWrite,
    input logic                                      ALUSrc,
    input logic                                      ResultSrc,
    input logic                                      MemWrite,   
    input logic        [2:0]                         ALUCtrl,
    input logic        [DATA_WIDTH-1:0]              ImmOp,
    input logic        [32:0]                        PC,
    input logic                                      jalmuxSel, // select for the jalmux
    output logic                                     eq,
    output logic       [DATA_WIDTH-1:0]              a0,
    output logic       [DATA_WIDTH-1:0]              rd1
);

logic [DATA_WIDTH-1:0] ALUout;
logic [DATA_WIDTH-1:0] ALUop1;
logic [DATA_WIDTH-1:0] ALUop2;
logic [DATA_WIDTH-1:0] regOp2;
logic [DATA_WIDTH-1:0] ReadData;
logic [DATA_WIDTH-1:0] Results; // output from the result mux
logic [DATA_WIDTH-1:0] jalmuxOut; // output from jalmux

regfile RegFile (
    .clk(clk),
    .A1(rs1),
    .A2(rs2),
    .A3(rd),
    .WE3(RegWrite),
    .WD3(jalmuxOut),
    .RD1(ALUop1),
    .RD2(regOp2),
    .a0(a0)
);

alu ALU(
    .ALUSrcA(ALUop1),
    .ALUSrcB(ALUop2),
    .ALUControl(ALUControl),
    .Zero(eq),
    .ALUResult(ALUout)
);

mux MUX(
    .d0(regOp2),
    .d1(ImmOp),
    .s(ALUsrc),
    .out(ALUop2)
);

datamem datamemory(
    .clk(clk),
    .WE(MemWrite),
    .A(ALUout),
    .WD(regOp2),
    .RD(ReadData)
);

mux ResultMux(
    .d0(ALUout),
    .d1(ReadData),
    .s(ResultSrc),
    .out(Results)
);

mux jalmux(
    .d0(Results),
    .d1(PC+4),
    .s(jalmuxSel),
    .out(jalmuxOut)
);
assign rd1 = ALUop1;
endmodule
