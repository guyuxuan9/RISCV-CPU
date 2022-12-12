module instr_mem #(
    parameter   ADDRESS_WIDTH = 32, // testing
                DATAOUT_WIDTH = 32,
                DATA_WIDTH = 8
)(
    input logic  [ADDRESS_WIDTH-1:0] A,
    output logic [DATAOUT_WIDTH-1:0] RD
);

logic [DATA_WIDTH-1:0] rom_array [32'hBFC00FFF:32'hBFC00000]; // 12 bits 

initial begin
        
        $display("Loading rom.");
        $readmemh("swtest.mem", rom_array,32'hBFC00000);
end;

assign RD = {rom_array [A], rom_array [A+1], rom_array [A+2], rom_array [A+3]};

endmodule
