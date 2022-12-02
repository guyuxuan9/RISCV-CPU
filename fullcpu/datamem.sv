module datamem#(
    parameter   ADDRESS_WIDTH = 32,
                DATA_WIDTH = 32
)(
    input logic clk,
    input logic WE,
    input logic [ADDRESS_WIDTH-1:0] A,
    input logic [DATA_WIDTH-1:0] WD,
    output logic [DATA_WIDTH-1:0] RD 
);

logic [DATA_WIDTH-1:0] ram_array [255:0];

assign ram_array[255] = 32'h12345; // a0 should be 12345 after FE

always_ff @(posedge clk) begin 
    if(WE == 1'b1)
        ram_array[A] <= WD;
end
assign RD = ram_array [A];
endmodule