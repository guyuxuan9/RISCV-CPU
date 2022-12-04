module regfile #(
    parameter ADDRESS_WIDTH = 5,
    parameter DATA_WIDTH = 32
)(
    // interface signals
    input logic                           clk,
    input logic   [ADDRESS_WIDTH-1:0]     A1,     // rs1
    input logic   [ADDRESS_WIDTH-1:0]     A2,     // rs2
    input logic   [ADDRESS_WIDTH-1:0]     A3,     // rd
    input logic                           WE3,    // RegWrite
    input logic   [DATA_WIDTH-1:0]        WD3,    // ALUout
    output logic  [DATA_WIDTH-1:0]        RD1,
    output logic  [DATA_WIDTH-1:0]        RD2,
    output logic  [DATA_WIDTH-1:0]        a0      // Used for testing purposes
);

    // state registers
    logic [DATA_WIDTH-1:0] ram_array [2**ADDRESS_WIDTH-1:0];

    always_ff @(posedge clk) begin
        if (WE3) ram_array[A3] <= WD3; 
    end

    always_comb begin
        RD1 = (A1 == 0) ? 0 : ram_array[A1];
        RD2 = (A2 == 0) ? 0 : ram_array[A2];
        a0 = ram_array[10];
    end

endmodule
