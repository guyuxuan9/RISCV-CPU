#include "verilated.h"
#include "verilated_vcd_c.h"
#include "Vfullcpu.h"

#include "vbuddy.cpp"     // include vbuddy code
#define MAX_SIM_CYC 1000

int main(int argc, char **argv, char **env) {
  int simcyc;     // simulation clock count
  int tick;       // each clk cycle has two ticks for two edges
  int lights = 0; // state to toggle LED lights

  Verilated::commandArgs(argc, argv);
  // init top verilog instance
  Vfullcpu * top = new Vfullcpu;
  // init trace dump
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace (tfp, 99);
  tfp->open ("fullcpu.vcd");

  // init Vbuddy
  if (vbdOpen()!=1) return(-1);
  vbdHeader("Course work");
  vbdSetMode(1);        // Flag mode set to one-shot
 
  // initialize simulation inputs
  top->clk = 1;
  top->rst = 0;
  top->trigger = 0;
  //top->N = vbdValue();

  // run simulation for MAX_SIM_CYC clock cycles
  for (simcyc=0; simcyc<MAX_SIM_CYC; simcyc++) {
    // dump variables into VCD file and toggle clock
    for (tick=0; tick<2; tick++) {
      tfp->dump (2*simcyc+tick);
      top->clk = !top->clk;
      top->eval ();
    }

    // Display toggle neopixel
    vbdBar(top-> a0 & 0xFF);
    // set up input signals of testbench
    top->rst = (simcyc < 2);    // assert reset for 1st cycle
    top->trigger = (simcyc > 2);
    //top->N = vbdValue();
    vbdCycle(simcyc);

    if (simcyc < 30)   top->trigger = 0;
    else               top->trigger = 1;

    if (simcyc == 20)  top->rst = 1;
    else               top->rst = 0;
  

    if (Verilated::gotFinish())  exit(0);
  }

  tfp->close(); 
  exit(0);
}
