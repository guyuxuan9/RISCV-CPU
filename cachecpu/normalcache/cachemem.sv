module cachemem#(
    parameter   ADDRESS_WIDTH = 3,
                DATA_WIDTH = 60
)(
    input logic     [31:0]        memaddr,
    input logic     [31:0]        inputdata,
    input logic                   cache_WE,
    input logic                   clk,
    output logic    [31:0]        dataout
);

logic hit = 1'b0;
logic tagCompare;
logic vbit = 1'b0;

logic [60-1:0] ram_array [7:0]; // [2**8 - 1:0]

always_comb begin
    if (cache_WE)
    begin
        tagCompare = (~(memaddr[31:5] ^ ram_array[memaddr[4:2]][58:32]));
        vbit = ram_array[memaddr[4:2]][59];
        hit = (tagCompare & vbit);
        if(hit)
            dataout = ram_array[memaddr[4:2]][31:0];
        else
            dataout = inputdata;
    end 
end

always_ff @(posedge clk) begin
    if (hit == 1'b0 & cache_WE == 1'b1)
    begin
        ram_array[memaddr[4:2]][59] = 1'b1;
        ram_array[memaddr[4:2]][31:0] = inputdata;
        ram_array[memaddr[4:2]][58:32] = memaddr[31:5];
    end
end

endmodule

