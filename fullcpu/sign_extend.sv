module sign_extend #(
    parameter address_width = 32
)(
    input logic     [address_width-1:0]        instr,  //output from Instr Mem
    input logic     [2:0]                      ImmSrc,
    output logic    [address_width-1:0]        ImmExt   //input to PC and ALUsrc mux
);

always_comb begin
    if (ImmSrc == 3'b000)
        begin
        ImmExt[31:12] = {20{instr[address_width-1]}};
        ImmExt[11:0] = instr[address_width-1:20];
        end
    else if (ImmSrc == 3'b010)
        begin
        ImmExt[31:13] = {19{instr[address_width-1]}};
        ImmExt[12:0] = {instr[address_width-1], instr[7], instr[30:25], instr[11:8],1'b0};
        end    
end

endmodule
