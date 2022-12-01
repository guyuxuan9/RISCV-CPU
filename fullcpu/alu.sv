module alu #(
    parameter DATA_WIDTH = 32
)(
    // interface signals
    input logic        [DATA_WIDTH-1:0]         SrcA,       // rd1
    input logic        [DATA_WIDTH-1:0]         SrcB,       
    input logic        [2:0]                    ALUControl,      
    output logic                                Zero,
    output logic       [DATA_WIDTH-1:0]         ALUResult           // ALUout
);

    always_comb begin
        // SUM
        if(on == 3'b000)
            ALUResult = SrcA + SrcB;
        
        // EQ
        if(SrcA == SrcB)
            Zero = 1;
        else 
            Zero = 0;
        
    end

endmodule
