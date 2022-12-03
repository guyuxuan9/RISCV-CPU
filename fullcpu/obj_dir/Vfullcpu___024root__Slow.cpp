// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfullcpu.h for the primary calling header

#include "verilated.h"

#include "Vfullcpu__Syms.h"
#include "Vfullcpu___024root.h"

void Vfullcpu___024root___ctor_var_reset(Vfullcpu___024root* vlSelf);

Vfullcpu___024root::Vfullcpu___024root(Vfullcpu__Syms* symsp, const char* name)
    : VerilatedModule{name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vfullcpu___024root___ctor_var_reset(this);
}

void Vfullcpu___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vfullcpu___024root::~Vfullcpu___024root() {
}
