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
    input logic                                      ALUsrc,
    input logic                                      ResultSrc,
    input logic                                      MemWrite,   
    input logic        [2:0]                         ALUCtrl,
    input logic        [DATA_WIDTH-1:0]              ImmOp,
    output logic                                     eq,
    output logic       [DATA_WIDTH-1:0]              a0
);

logic [DATA_WIDTH-1:0] ALUout;
logic [DATA_WIDTH-1:0] ALUop1;
logic [DATA_WIDTH-1:0] ALUop2;
logic [DATA_WIDTH-1:0] regOp2;
logic [DATA_WIDTH-1:0] ReadData;
logic [DATA_WIDTH-1:0] Results; // output from the result mux

regfile RegFile (
    .clk(clk),
    .addr1(rs1),
    .addr2(rs2),
    .addr3(rd),
    .we3(RegWrite),
    .wd3(Results),
    .rd1(ALUop1),
    .rd2(regOp2),
    .a0(a0)
);

alu ALU(
    .ALUop1(ALUop1),
    .ALUop2(ALUop2),
    .ALUCtrl(ALUCtrl),
    .eq(eq),
    .out(ALUout)
);

mux MUX(
    .d0(regOp2),
    .d1(ImmOp),
    .s(ALUsrc),
    .out(ALUop2)
);

datamem datamemory(
    .clk(clk),
    .wr_en(MemWrite),
    .addr(ALUout),
    .wd(regOp2),
    .rd(ReadData)
);

mux ResultMux(
    .d0(ALUout),
    .d1(ReadData),
    .s(ResultSrc),
    .out(Results)
);

endmodule
