#include "verilated.h"
#include "verilated_vcd_c.h"
#include "Vpipelined_top.h"
#include "vbuddy.cpp"                               // include vbuddy code
#define MAX_SIM_CYC 350000

int main(int argc, char **argv, char **env) {
  int simcyc;                                       // simulation clock count
  int tick;                                         // each clk cycle has two ticks for two edges

  Verilated::commandArgs(argc, argv);
  // init top verilog instance
  Vpipelined_top * top = new Vpipelined_top;
  // init trace dump
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace (tfp, 99);
  tfp->open ("pipelined_top.vcd");

  if (vbdOpen()!=1) return(-1);
  vbdHeader("Gaussian pdf");
  vbdSetMode(0);        // Flag mode set to one-shot
  
  top->rst = 1;
  top->clk = 1;
  top->trigger = 1;
  // run simulation for MAX_SIM_CYC clock cycles
  for (simcyc=0; simcyc<MAX_SIM_CYC; simcyc++) {

    // dump variables into VCD file and toggle clock
    for (tick=0; tick<2; tick++) {
      tfp->dump (2*simcyc+tick);
      top->clk = !top->clk;
      top->eval ();
    }

    if (simcyc < 5)   top->trigger = 0;
    else               top->trigger = 1;

    if (simcyc < 2)  top->rst = 1;
    else               top->rst = 0;
    
    if (simcyc > 124468)              // triangle:315970   sine: 37525    gaussian:124468
      {vbdPlot(int(top->a0), 0, 255);
       vbdCycle(simcyc);}

    if (Verilated::gotFinish())  exit(0);
  }

}