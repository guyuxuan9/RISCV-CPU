module mux #(
    parameter DATA_WIDTH = 32
)(
    // interface signals
    input logic   [DATA_WIDTH-1:0]        d0,     // regOp2
    input logic   [DATA_WIDTH-1:0]        d1,     // ImmOp
    input logic                           s,      // ALUsrc
    output logic  [DATA_WIDTH-1:0]        out    // ALUop2
);

    // output logic
    assign out = s ? d1 : d0;

endmodule
