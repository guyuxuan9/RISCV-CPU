module associative_cache#(
    parameter   DATA_WIDTH = 122
)(
    input logic     [31:0]       memaddr,
    input logic     [31:0]       inputdata,
    input logic                  cache_WE,
    input logic                  clk,
    output logic    [31:0]       dataout
);

logic hit = 1'b0;
logic hit1 = 1'b0;
logic hit0 = 1'b0;
logic tagCompare1;
logic tagCompare0;
logic vbit1 = 1'b0;
logic vbit0 = 1'b0;
logic [31:0] dataout0;
logic [31:0] dataout1;

logic [DATA_WIDTH-1:0] ram_array [3:0]; 

always_comb begin
    if (cache_WE)
    begin
        tagCompare1 = (memaddr[31:4] == ram_array[memaddr[3:2]][120:93]);
        vbit1 = ram_array[memaddr[3:2]][121];
        hit1 = (tagCompare1 & vbit1);
        if(hit1)
            dataout1 = ram_array[memaddr[3:2]][92:61];
        else
            dataout1 = inputdata;
    end
    
    begin
        tagCompare0 = (memaddr[31:4] == ram_array[memaddr[3:2]][59:32]);
        vbit0 = ram_array[memaddr[3:2]][60];
        hit0 = (tagCompare0 & vbit0);
        if(hit0)
            dataout0 = ram_array[memaddr[3:2]][31:0];
        else
            dataout0 = inputdata; 
    end  
    
    begin
        if(hit1 | hit0)
            hit = 1'b1;
        if(hit)
            assign dataout = hit1 ? dataout1 : dataout0;
    end
end
    

always_ff @(posedge clk) begin
    if (hit1 == 1'b0 & cache_WE == 1'b1)
    begin
        ram_array[memaddr[3:2]][92:61] <= inputdata;
        ram_array[memaddr[3:2]][120:93] <= memaddr[31:4];
        ram_array[memaddr[3:2]][121] <= 1'b1;
    end
    
    if (hit1 == 1'b0 & cache_WE == 1'b1)
    begin
        ram_array[memaddr[3:2]][31:0] <= inputdata;
        ram_array[memaddr[3:2]][59:32] <= memaddr[31:4];
        ram_array[memaddr[3:2]][60] <= 1'b1;
    end
end

endmodule
