#include "verilated.h"
#include "verilated_vcd_c.h"
#include "Vpipelined_top.h"
#define MAX_SIM_CYC 1000

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

    top->rst = 0;
    top->clk = 1;
    top->trigger = 0;

    // run simulation for MAX_SIM_CYC clock cycles
    for (simcyc=0; simcyc<MAX_SIM_CYC; simcyc++) {
    // dump variables into VCD file and toggle clock
    for (tick=0; tick<2; tick++) {
      tfp->dump (2*simcyc+tick);
      top->clk = !top->clk;
      top->eval ();
    }

    if (simcyc < 30)   top->trigger = 0;
    else               top->trigger = 1;

    if (simcyc == 50)  top->rst = 1;
    else               top->rst = 0;
  
    if (Verilated::gotFinish())  exit(0);
  }

  tfp->close(); 
  exit(0);
}