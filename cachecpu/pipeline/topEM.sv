module topEM#(
    parameter DATA_WIDTH = 32
)(
    input logic clk,
    input logic [DATA_WIDTH-1:0]     ALUResultE,
    input logic [DATA_WIDTH-1:0]     WriteDataE,
    input logic [DATA_WIDTH-1:0]     PCPlus4E,
    input logic [4:0]                RdE,

    output logic [DATA_WIDTH-1:0]    ALUResultM,
    output logic [DATA_WIDTH-1:0]    WriteDataM,
    output logic [DATA_WIDTH-1:0]    PCPlus4M,
    output logic [4:0]               RdM
);

register aluresult_regEM(
    .clk(clk),
    .in(ALUResultE),
    .out(ALUResultM)
);

register writedata_regEM(
    .clk(clk),
    .in(WriteDataE),
    .out(WriteDataM)
);

register #(5) rd3_regEM(  // destination register, initialise DATA_WIDTH to 5
    .clk(clk),
    .in(RdE),
    .out(RdM)
);

register pcplus4_regEM(
    .clk(clk),
    .in(PCPlus4E),
    .out(PCPlus4M)
);

endmodule
