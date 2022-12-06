module topDE#(
    parameter DATA_WIDTH = 32
)(
    input logic clk,
    input logic [DATA_WIDTH-1:0]     RD1D,
    input logic [DATA_WIDTH-1:0]     RD2D,
    input logic [DATA_WIDTH-1:0]     PCD,
    input logic [DATA_WIDTH-1:0]     ImmExtD,
    input logic [DATA_WIDTH-1:0]     PCPlus4D,

    // RdD and RdE
    // input logic [5:0]             RdD,
    // output logic [5:0]            RdE,

    output logic [DATA_WIDTH-1:0]    RD1E,
    output logic [DATA_WIDTH-1:0]    RD2E,
    output logic [DATA_WIDTH-1:0]    PCE,
    output logic [DATA_WIDTH-1:0]    ImmExtE,
    output logic [DATA_WIDTH-1:0]    PCPlus4E
);

reg pc(
    .clk(clk),
    .in(PCD),
    .out(PCE)
);

reg rd1(
    .clk(clk),
    .in(RD1D),
    .out(RD1E)
);

reg rd2(
    .clk(clk),
    .in(RD2D),
    .out(RD2E)
);

reg immext(
    .clk(clk),
    .in(ImmExtD),
    .out(ImmExtE)
);

reg pcplus4(
    .clk(clk),
    .in(PCPlus4D),
    .out(PCPlus4E)
);

endmodule
