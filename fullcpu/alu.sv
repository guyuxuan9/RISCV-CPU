module alu #(
    parameter DATA_WIDTH = 32
)(
    // interface signals
    input logic        [DATA_WIDTH-1:0]         ALUSrcA,       // rd1
    input logic        [DATA_WIDTH-1:0]         ALUSrcB,       // rd2
    input logic        [2:0]                    ALUControl,      
    output logic                                eq,
    output logic       [DATA_WIDTH-1:0]         ALUResult           // ALUResult
);

    always_comb begin
        case (ALUCtrl)
            // Sum
            3'b000: ALUResult  = ALUSrcA + ALUSrcB;
            // Subtract
            3'b001: ALUResult  = ALUSrcA - ALUSrcB;
            // And
            3'b010: ALUResult  = ALUSrcA & ALUSrcB;
            // Or
            3'b011: ALUResult  = ALUSrcA | ALUSrcB;
            // SLT
            3'b100: ALUResult  = ALUSrcA < ALUSrcB;
            // Xor
            3'b101: ALUResult  = ALUSrcA ^ ALUSrcB;
            // SLT
            3'b110: ALUResult  = ALUSrcA << ALUSrcB;
            // SRL
            3'b111: ALUResult  = ALUSrcA >> ALUSrcB;

        endcase
        // EQ
        if(ALUSrcA == ALUSrcB)
            eq = 1;
        else 
            eq = 0;
        
    end

endmodule
