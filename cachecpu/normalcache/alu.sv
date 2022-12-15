module alu #(
    parameter DATA_WIDTH = 32
)(
    // interface signals
    input logic        [DATA_WIDTH-1:0]         ALUSrcA,       
    input logic        [DATA_WIDTH-1:0]         ALUSrcB,       
    input logic        [2:0]                    ALUControl,      
    output logic                                Zero,
    output logic       [DATA_WIDTH-1:0]         ALUResult           
);

    always_comb begin
        case (ALUControl)
            // Sum
            3'b000: ALUResult  = ALUSrcA + ALUSrcB;
            // Subtract
            3'b001: ALUResult  = ALUSrcA - ALUSrcB;
            // And
            3'b010: ALUResult  = ALUSrcA & ALUSrcB;
            // Or
            3'b011: ALUResult  = ALUSrcA | ALUSrcB;

            // SLT
            // 3'b100: ALUResult  = ALUSrcA < ALUSrcB;
            // gives error messages

            // Instructions that only use SrcB, e.g. lui rd,upimm
            3'b100: ALUResult = ALUSrcB;
            // Xor
            3'b101: ALUResult  = ALUSrcA ^ ALUSrcB;
            // SLL
            3'b110: ALUResult  = ALUSrcA << ALUSrcB;
            // SRL
            3'b111: ALUResult  = ALUSrcA >> ALUSrcB;

        endcase
        
        // Zero
        if(ALUSrcA == ALUSrcB)
            Zero = 1;
        else 
            Zero = 0;
        
    end

endmodule
