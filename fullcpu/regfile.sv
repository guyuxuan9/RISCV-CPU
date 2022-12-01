module regfile #(
    parameter ADDRESS_WIDTH = 5,
    parameter DATA_WIDTH = 32
)(
    // interface signals
    input logic                           clk,
    input logic   [ADDRESS_WIDTH-1:0]     addr1,     // rs1
    input logic   [ADDRESS_WIDTH-1:0]     addr2,     // rs2
    input logic   [ADDRESS_WIDTH-1:0]     addr3,     // rd
    input logic                           we3,       // RegWrite
    input logic   [DATA_WIDTH-1:0]        wd3,       // ALUout
    output logic  [DATA_WIDTH-1:0]        rd1,
    output logic  [DATA_WIDTH-1:0]        rd2,
    output logic  [DATA_WIDTH-1:0]        a0
);

    // state registers
    logic [DATA_WIDTH-1:0] ram_array [2**ADDRESS_WIDTH-1:0];

    always_ff @(posedge clk) begin
        if (we3) ram_array[addr3] <= wd3; 
    end

    always_comb begin
        rd1 = (addr1 == 0) ? 0 : ram_array[addr1];
        rd2 = (addr2 == 0) ? 0 : ram_array[addr2];
        a0 = ram_array[10];
    end

endmodule
