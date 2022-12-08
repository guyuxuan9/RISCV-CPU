module instr_mem #(
    parameter   ADDRESS_WIDTH = 32, // testing
                DATAOUT_WIDTH = 32,
                DATA_WIDTH = 8
)(
    input logic  [ADDRESS_WIDTH-1:0] A,
    output logic [DATAOUT_WIDTH-1:0] RD
);

logic [DATA_WIDTH-1:0] rom_array [55:0]; // [2**5 - 1:0]

initial begin
        
        $display("Loading rom.");
        $readmemh("test1.mem", rom_array);
        // rom_array[28:2**32-1] <= '{default:'1};
end;

assign RD = {rom_array [A], rom_array [A+1], rom_array [A+2], rom_array [A+3]};

endmodule
