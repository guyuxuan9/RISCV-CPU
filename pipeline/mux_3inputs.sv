module mux_3inputs #(
    parameter DATA_WIDTH = 32
)(
    // interface signals
    input logic   [DATA_WIDTH-1:0]        d0,     
    input logic   [DATA_WIDTH-1:0]        d1,    
    input logic   [DATA_WIDTH-1:0]        d2,
    input logic   [1:0]                   s,      
    output logic  [DATA_WIDTH-1:0]        out     
);

always_comb 
    case(s)
    2'b00:  out = d0;
    2'b01:  out = d1;
    2'b02:  out = d2;
    endcase
endmodule
