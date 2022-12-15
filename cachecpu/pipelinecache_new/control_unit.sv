module control_unit #(
    // parameter ADDRESS_WIDTH = 32
)(
    input logic      [6:0]      op,         // Instr[6:0]
    input logic      [2:0]      funct3,     // Instr[14:12]
    input logic                 funct7,     // Instr[30]
    output logic                RegWrite,
    output logic     [1:0]      ResultSrc,  
    output logic                MemWrite,
    output logic                Jump, 
    output logic                Branch, 
    output logic     [2:0]      ALUControl,
    output logic                ALUSrc,
    output logic     [2:0]      ImmSrc,
    output logic                JalrmuxSel,
    output logic                cache_WE
);

always_comb begin

    // Initialising Outputs
    RegWrite = 1'b0;
    ImmSrc = 3'b000;
    ALUSrc = 1'b0;
    ALUControl = 3'b000;
    MemWrite = 1'b0;
    ResultSrc = 2'b00;
    JalrmuxSel = 1'b0;
    Jump = 1'b0;
    Branch = 1'b0;
    ResultSrc = 2'b00; 
    cache_WE = 1'b0;

    case (op)
        7'b0010011: // register instructions
            begin
            ResultSrc = 2'b00; // does not involve the data memory
            case(funct3)
                3'b000: // addi
                begin 
                    RegWrite = 1'b1;
                    ALUControl = 3'b000;
                    ALUSrc = 1'b1;
                end

                3'b001: // slli
                    case(funct7)
                        1'b0:
                        begin
                            RegWrite = 1'b1;
                            ALUControl = 3'b110;
                            ALUSrc = 1'b1;   
                        end
                    endcase
            endcase
            end

        7'b1100011: // branch instructions
            begin 
            Branch = 1'b1;
            case(funct3)
                3'b000: // beq
                    begin
                        ImmSrc = 3'b010;
                        ALUControl = 3'b001;
                    end
                    
                3'b001: // bne
                    begin
                        ImmSrc = 3'b010;
                        ALUControl = 3'b111;
                    end

            endcase
            end
            
        7'b0100011: begin  // store instructions
            ResultSrc = 2'b01;
            case(funct3)
                3'b010: // sw
                begin
                    MemWrite = 1'b1;
                    ImmSrc = 3'b001;
                    ALUControl = 3'b000;
                    ALUSrc = 1'b1;
                end

                3'b000: // sb
                begin
                    ImmSrc = 3'b001;
                    ALUSrc = 1'b1;
                    MemWrite = 1'b1;
                    ALUSrc = 1'b1;
                end
            endcase    
        end

        7'b0000011: begin // load instructions
            ResultSrc = 2'b01;
            case(funct3)
                3'b010: // lw
                begin
                    RegWrite = 1'b1;
                    ALUSrc = 1'b1;
                    cache_WE = 1'b1;
                end

                3'b100: // lbu
                begin
                    ALUSrc = 1'b1;
                    RegWrite = 1'b1;
                    cache_WE = 1'b1;
                end
            endcase
        end

        7'b1101111:  // jal
            begin
                ResultSrc = 2'b10;
                ImmSrc = 3'b100;
                RegWrite = 1'b1;
                Jump = 1'b1;
            end

        7'b1100111: 
            case(funct3)
                3'b000: // jalr
                begin
                    ResultSrc = 2'b10;
                    RegWrite = 1'b1;
                    JalrmuxSel = 1'b1;
                    Jump = 1'b1;
                end
            endcase
        
        7'b0110111: // lui
            begin
                ImmSrc = 3'b101;
                RegWrite = 1'b1;
                ALUControl = 3'b100;
                ALUSrc = 1'b1;
            end
        
        7'b0110011: // R-type
            case(funct3)
                3'b000: // add
                begin
                    RegWrite = 1'b1;
                end
            endcase
    endcase
end
endmodule
