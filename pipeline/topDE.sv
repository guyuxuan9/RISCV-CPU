module topDE#(
    parameter DATA_WIDTH = 32
)(
    input logic                      clk,
    input logic [DATA_WIDTH-1:0]     RD1D,
    input logic [DATA_WIDTH-1:0]     RD2D,
    input logic [DATA_WIDTH-1:0]     PCD,
    input logic [DATA_WIDTH-1:0]     ImmExtD,
    input logic [DATA_WIDTH-1:0]     PCPlus4D,
    input logic [4:0]                RdD,  // A3

    output logic [DATA_WIDTH-1:0]    RD1E,
    output logic [DATA_WIDTH-1:0]    RD2E,
    output logic [DATA_WIDTH-1:0]    PCE,
    output logic [DATA_WIDTH-1:0]    ImmExtE,
    output logic [DATA_WIDTH-1:0]    PCPlus4E,
    output logic [4:0]               RdE
);

register pc_regDE(
    .clk(clk),
    .in(PCD),
    .out(PCE)
);

register rd1_regDE(
    .clk(clk),
    .in(RD1D),
    .out(RD1E)
);

register rd2_regDE(
    .clk(clk),
    .in(RD2D),
    .out(RD2E)
);

register #(5) rd3_regDE(      // destination register, initialise DATA_WIDTH to 5
    .clk(clk),
    .in(RdD),
    .out(RdE)
);

register immExt_regDE(
    .clk(clk),
    .in(ImmExtD),
    .out(ImmExtE)
);

register pcplus4_regDE(
    .clk(clk),
    .in(PCPlus4D),
    .out(PCPlus4E)
);

endmodule
