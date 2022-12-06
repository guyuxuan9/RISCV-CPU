module Decode #(
    parameter DATA_WIDTH = 32
)(
    input logic [DATA_WIDTH-1:0]            InstrD,
    input logic [31:0]                      PCD,
    input logic [31:0]                      PCPlus4
);

control_unit cu(
    .op(InstrD[6:0]),
    .funct3(InstrD[14:12]),
    .funct7(InstrD[30]),
    // to be completed!!!
);

endmodule
