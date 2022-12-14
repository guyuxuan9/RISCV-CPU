module datamem#(
    parameter   ADDRESS_WIDTH = 32,
                DATA_WIDTH = 8
)(
    input logic                         clk,
    input logic                         WE,
    input logic  [ADDRESS_WIDTH-1:0]    A,
    input logic  [DATA_WIDTH-1:0]       WD,
    output logic [DATA_WIDTH-1:0]       RD 
);

logic [DATA_WIDTH-1:0] ram_array [32'h1FFFF:32'h0];

initial begin
    $display("Loading data ram.");
    $readmemh("noisy.mem", ram_array, 32'h10000);
end;

// synchronous
always_ff @(posedge clk) begin 
    if(WE == 1'b1)
        ram_array[A] <= WD;
end

assign RD = ram_array[A];

endmodule
