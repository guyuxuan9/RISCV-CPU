module control_unit #(
    parameter ADDRESS_WIDTH = 32
)(
    input logic      [6:0]      op,      // Instr[6:0]
    input logic      [3:0]      funct3,  // Instr[14:12]
    input logic                 funct7,  // Instr[30]
    input logic                 Zero,
    output logic                RegWrite,
    output logic     [2:0]      ImmSrc,
    output logic                ALUSrc,
    output logic     [2:0]      ALUControl,
    output logic                MemWrite,
    output logic                ResultSrc,
    output logic                PCSrc,
    output logic                jalmuxSel,
    output logic                jalrmuxSel
);

always_comb begin

    // Initialising Outputs
    RegWrite = 1'b0;
    ImmSrc = 3'b000;
    ALUSrc = 1'b0;
    ALUControl = 3'b000;
    MemWrite = 1'b0;
    ResultSrc = 1'b0;
    PCSrc = 1'b0; 
    jalmuxSel = 1'b0;
    jalrmuxSel = 1'b0;

    case (op)
        7'b0010011: // register instructions
            case(funct3)
                3'b000: // addi
                begin 
                    RegWrite = 1'b1;
                    ImmSrc = 3'b000;
                    ALUControl = 3'b000;
                    ALUSrc = 1'b1;
                end

                3'b001: // slli
                begin
                    RegWrite = 1'b1;
                    ImmSrc = 3'b000;
                    ALUControl = 3'b110;
                    ALUSrc = 1'b1;   
                end
            endcase

        7'b1100011: // branch instructions
            case(funct3)
                3'b000: // beq
                    case(Zero)
                        1'b1:
                        begin
                            PCSrc = 1'b1;
                            ImmSrc = 3'b010;
                            ALUControl = 3'b001;
                        end
                    endcase
                    
                3'b001: // bne
                    case(Zero)
                        1'b0:
                        begin
                            PCSrc = 1'b1;
                            ImmSrc = 3'b010;
                            ALUControl = 3'b001;
                        end
                    endcase
            endcase

        7'b0100011: // store instructions
            case(funct3)
                3'b010: // sw
                begin
                    ResultSrc = 1'b1;
                    MemWrite = 1'b1;
                    ImmSrc = 3'b001;
                    ALUControl = 3'b000;
                end
            endcase

        7'b0000011: // load instructions
            case(funct3)
                3'b010: // lw
                begin
                    ResultSrc = 1'b1;
                    RegWrite = 1'b1;
                    ImmSrc = 3'b000;
                    ALUControl = 3'b000;
                end
            endcase
        
        7'b1101111:  // jal
            begin
                ImmSrc = 3'b100;
                jalmuxSel = 1'b1;
                RegWrite = 1'b1;
                PCSrc = 1'b1;
            end

        7'b1100111: 
            case(funct3)
                3'b000: // jalr
                begin
                    ImmSrc = 3'b000;
                    jalmuxSel = 1'b1;
                    RegWrite = 1'b1;
                    PCSrc = 1'b1;
                    jalrmuxSel = 1'b1;
                end
            endcase
    endcase
end
endmodule
