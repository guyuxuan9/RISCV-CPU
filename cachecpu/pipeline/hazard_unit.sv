module HazardUnit#(
    parameter ADDRESS_WIDTH = 32,
              DATAOUT_WIDTH = 32
)(
    input logic     Rs1E,       // output from topDE
    input logic     Rs2E,       // output from topDE
    input logic     RdM,        // output from topEM
    input logic     RegWriteM,  // output from cuEM
    input logic     RdW,        // output from topFD
    input logic     RegWriteW,  // output from cuFD
    output logic    ForwardAE,  // enable for muxA
    output logic    ForwardBE   // enable for muxB
);