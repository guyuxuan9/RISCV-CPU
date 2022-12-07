module mux4#(
    parameter DATA_WIDTH = 32
)(
    // interface signals
    input logic   [DATA_WIDTH-1:0]        d0,     // regOp2
    input logic   [DATA_WIDTH-1:0]        d1,     // ImmOp
    input logic   [DATA_WIDTH-1:0]        d2,     // PCPlus4W
    input logic   [1:0]                   resultsrc,// ALUsrc
    output logic  [DATA_WIDTH-1:0]        out    // ALUop2
);

    // output logic
    always_comb 
        begin
        case(resultsrc):
        2'b00:  out = d0;
        2'b01:  out = d1;
        2'b10:  out = d2;
        endcase
        
endmodule
