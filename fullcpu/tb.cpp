#include "verilated.h"
#include "verilated_vcd_c.h"
#include "Vfullcpu.h"
#define MAX_SIM_CYC 1000

int main(int argc, char **argv, char **env) {
  int simcyc;     // simulation clock count
  int tick;       // each clk cycle has two ticks for two edges

  Verilated::commandArgs(argc, argv);
  // init top verilog instance
  Vfullcpu * top = new Vfullcpu;
  // init trace dump
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace (tfp, 99);
  tfp->open ("fullcpu.vcd");
 
  top->rst = 0;
  top->clk = 1;
  
  // run simulation for MAX_SIM_CYC clock cycles
  for (simcyc=0; simcyc<MAX_SIM_CYC; simcyc++) {
    // dump variables into VCD file and toggle clock
    for (tick=0; tick<2; tick++) {
      tfp->dump (2*simcyc+tick);
      top->clk = !top->clk;
      top->eval ();
    }
    if (simcyc == 20) {
      top->rst = 1;
    }
    else
    {
      top->rst = 0;
    }

    if (Verilated::gotFinish())  exit(0);
  }

  tfp->close(); 
  exit(0);
}

// N=36 -> 1s
