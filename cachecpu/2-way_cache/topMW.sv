module topMW#(
    parameter DATA_WIDTH = 32
)(
    input logic clk,
    input logic [DATA_WIDTH-1:0]     ALUResultM,
    input logic [DATA_WIDTH-1:0]     ReadDataM,
    input logic [DATA_WIDTH-1:0]     PCPlus4M,
    input logic [4:0]                RdM,
    output logic [DATA_WIDTH-1:0]    ALUResultW,
    output logic [DATA_WIDTH-1:0]    ReadDataW,
    output logic [DATA_WIDTH-1:0]    PCPlus4W,
    output logic [4:0]               RdW
);

register aluresult_regMW(
    .clk(clk),
    .in(ALUResultM),
    .out(ALUResultW)
);

register readdata_regMW(
    .clk(clk),
    .in(ReadDataM),
    .out(ReadDataW)
);

register #(5) rd3_regMW(  // destination register, initialise DATA_WIDTH to 5
    .clk(clk),
    .in(RdM),
    .out(RdW)
);

register pcplus4_regMW(
    .clk(clk),
    .in(PCPlus4M),
    .out(PCPlus4W)
);

endmodule
