module control_unit #(
    parameter ADDRESS_WIDTH = 32
)(
    input logic      [6:0]      op,      // Instr[6:0]
    input logic      [2:0]      funct3,  // Instr[14:12]
    input logic                 funct7,  // Instr[30]
    output logic                RegWriteD,
    output logic     [1:0]      ResultSrcD,  // to be completed!!!!
    output logic                MemWriteD,
    output logic                JumpD, // to be completed!!!
    output logic                BranchD, // to be completed!!!
    output logic     [2:0]      ALUControlD,
    output logic                ALUSrcD,
    output logic     [2:0]      ImmSrcD,
    output logic                JalrmuxSelD
);

always_comb begin

    // Initialising Outputs
    RegWriteD = 1'b0;
    ImmSrcD = 3'b000;
    ALUSrcD = 1'b0;
    ALUControlD = 3'b000;
    MemWriteD = 1'b0;
    ResultSrcD = 2'b00;
    JalrmuxSelD = 1'b0;
    JumpD = 1'b0;
    BranchD = 1'b0;
    ResultSrcD = 2'b00; 

    case (op)
        7'b0010011: // register instructions
            begin
            ResultSrcD = 2'b00; // does not involve the data memory
            case(funct3)
                3'b000: // addi
                begin 
                    RegWriteD = 1'b1;
                    ImmSrcD = 3'b000;
                    ALUControlD = 3'b000;
                    ALUSrcD = 1'b1;
                end

                3'b001: // slli
                begin
                    RegWriteD = 1'b1;
                    ImmSrcD = 3'b000;
                    ALUControlD = 3'b110;
                    ALUSrcD = 1'b1;   
                end
            endcase
            end
        7'b1100011: begin // branch instructions
            BranchD = 1'b1;
            
            case(funct3)
                3'b000: // beq
                    begin
                        ImmSrcD = 3'b010;
                        ALUControlD = 3'b001;
                    end
                    
                3'b001: // bne
                    begin
                        ImmSrcD = 3'b010;
                        ALUControlD = 3'b001;
                    end

            endcase
            end
        7'b0100011: begin// store instructions
            ResultSrcD = 2'b01;
            case(funct3)
                3'b010: // sw
                begin
                    MemWriteD = 1'b1;
                    ImmSrcD = 3'b001;
                    ALUControlD = 3'b000;
                end
            endcase
        end
        7'b0000011: begin// load instructions
            ResultSrcD = 2'b01;
            case(funct3)
                3'b010: // lw
                begin
                    RegWriteD = 1'b1;
                    ImmSrcD = 3'b000;
                    ALUControlD = 3'b000;
                end
            endcase
        end
        7'b1101111:  // jal
            begin
                ResultSrcD = 2'b10;
                ImmSrcD = 3'b100;
                RegWriteD = 1'b1;
                JumpD = 1'b1;
            end

        7'b1100111: 
            case(funct3)
                3'b000: // jalr
                begin
                    ResultSrcD = 2'b10;
                    ImmSrcD = 3'b000;
                    RegWriteD = 1'b1;
                    JalrmuxSelD = 1'b1;
                    JumpD = 1'b1;
                end
            endcase
    endcase
end
endmodule
