module cachemem#(
    parameter   ADDRESS_WIDTH = 2,
                DATA_WIDTH = 122
)(
    input logic     [31:0]       memaddr,
    input logic     [31:0]       inputdata,
    output logic    [31:0]       dataout
);

logic hit;
logic hit1;
logic hit0;
logic [31:0] dataout0;
logic [31:0] dataout1;

logic [122-1:0] ram_array [1:0]; 

always_comb begin
    hit0 = 1'b0;
    hit1 = 1'b0;
    hit = 1'b0;

    if((memaddr[31:4] ~^ ram_array[memaddr[3:2]][120:93]) & ram_array[memaddr[3:2]][121])
        hit1 = 1'b1;
    if(hit1)
        dataout1 = ram_array[memaddr[3:2]][92:61];
    else
        dataout1 = inputdata;
        ram_array[memaddr[3:2]][92:61] = inputdata;
        ram_array[memaddr[3:2]][120:93] = memaddr[31:4];
        ram_array[memaddr[3:2]][121] = 1'b1;
    
    if((memaddr[31:4] ~^ ram_array[memaddr[3:2]][59:32]) & ram_array[memaddr[3:2]][60])
        hit0 = 1'b1;
    if(hit0)
        dataout0 = ram_array[memaddr[3:2]][31:0];
    else
        dataout0 = inputdata;
        ram_array[memaddr[3:2]][31:0] = inputdata;
        ram_array[memaddr[3:2]][59:32] = memaddr[31:4];
        ram_array[memaddr[3:2]][60] = 1'b1;
    
    if(hit1 | hit0)
        hit = 1'b1;
    if(hit)
        assign dataout = hit1 ? dataout1 : dataout0;
end

endmodule
