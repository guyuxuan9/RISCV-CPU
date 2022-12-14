module datamem#(
    parameter   ADDRESS_WIDTH = 32,
                DATA_WIDTH = 32
)(
    input logic                         clk,
    input logic                         WE,
    input logic  [ADDRESS_WIDTH-1:0]    A,
    input logic  [DATA_WIDTH-1:0]       WD,
    output logic [DATA_WIDTH-1:0]       RD 
);

logic [DATA_WIDTH-1:0] ram_array [32'h1FFFF:32'h0]; // [2**8 - 1:0]

initial begin
    $display("Loading data ram.");
    $readmemh("gaussian.mem", ram_array, 32'h10000);
end;

// synchronous
always_ff @(posedge clk)  
    if(WE == 1'b1)
        ram_array[A] <= WD;

assign RD = ram_array[A];

endmodule
