module topFD#(
    parameter DATA_WIDTH = 32
)(
    input logic                      clk,
    input logic [DATA_WIDTH-1:0]     PCF,
    input logic [DATA_WIDTH-1:0]     InstrF,
    input logic [DATA_WIDTH-1:0]     PCPlus4F,
    output logic [DATA_WIDTH-1:0]    PCD,
    output logic [DATA_WIDTH-1:0]    InstrD,
    output logic [DATA_WIDTH-1:0]    PCPlus4D
);

register pc_regFD(
    .clk(clk),
    .in(PCF),
    .out(PCD)
);

register instr_regFD(
    .clk(clk),
    .in(InstrF),
    .out(InstrD)
);

register PCPlus4FD(
    .clk(clk),
    .in(PCPlus4F),
    .out(PCPlus4D)
);

endmodule
