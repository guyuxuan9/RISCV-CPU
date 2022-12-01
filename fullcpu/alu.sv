module alu #(
    parameter DATA_WIDTH = 32
)(
    // interface signals
    input logic        [DATA_WIDTH-1:0]         ALUop1,       // rd1
    input logic        [DATA_WIDTH-1:0]         ALUop2,       
    input logic        [2:0]                    ALUCtrl,      
    output logic                                eq,
    output logic       [DATA_WIDTH-1:0]         out           // ALUout
);

    always_comb begin
        // SUM
        if(ALUCtrl == 3'b000)
            out = ALUop1 + ALUop2;
        
        // EQ
        if(ALUop1 == ALUop2)
            eq = 1;
        else 
            eq = 0;
        
    end

endmodule
