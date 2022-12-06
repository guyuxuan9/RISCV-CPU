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

    // RdD and RdE
    // input logic [5:0]             RdD,
    // output logic [5:0]            RdE,

    output logic [DATA_WIDTH-1:0]    RD1E,
    output logic [DATA_WIDTH-1:0]    RD2E,
    output logic [DATA_WIDTH-1:0]    PCE,
    output logic [DATA_WIDTH-1:0]    ImmExtE,
    output logic [DATA_WIDTH-1:0]    PCPlus4E,
    output logic [4:0]               RdE
);

reg pc_regDE(
    .clk(clk),
    .in(PCD),
    .out(PCE)
);

reg rd1_regDE(
    .clk(clk),
    .in(RD1D),
    .out(RD1E)
);

reg rd2_regDE(
    .clk(clk),
    .in(RD2D),
    .out(RD2E)
);

reg #(5) rd3_regDE(      // destination register, initialise DATA_WIDTH to 5
    .clk(clk),
    .in(RdD),
    .out(RdE)
);

reg immExt_regDE(
    .clk(clk),
    .in(ImmExtD),
    .out(ImmExtE)
);

reg pcplus4_regDE(
    .clk(clk),
    .in(PCPlus4D),
    .out(PCPlus4E)
);

endmodule
