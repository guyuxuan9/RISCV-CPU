// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vfullcpu.h for the primary calling header

#ifndef VERILATED_VFULLCPU___024ROOT_H_
#define VERILATED_VFULLCPU___024ROOT_H_  // guard

#include "verilated.h"

class Vfullcpu__Syms;

class Vfullcpu___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst,0,0);
    CData/*0:0*/ fullcpu__DOT__PCsrc;
    CData/*0:0*/ fullcpu__DOT__Zero;
    CData/*0:0*/ fullcpu__DOT__RegWrite;
    CData/*2:0*/ fullcpu__DOT__ALUctrl;
    CData/*0:0*/ fullcpu__DOT__ALUsrc;
    CData/*2:0*/ fullcpu__DOT__ImmSrc;
    CData/*0:0*/ fullcpu__DOT__MemWrite;
    CData/*0:0*/ fullcpu__DOT__ResultSrc;
    CData/*0:0*/ fullcpu__DOT__jalmuxSel;
    CData/*0:0*/ fullcpu__DOT__jalrmuxSel;
    CData/*0:0*/ __Vclklast__TOP__clk;
    VL_OUT(a0,31,0);
    IData/*31:0*/ fullcpu__DOT__ImmOp;
    IData/*31:0*/ fullcpu__DOT__Instr;
    IData/*31:0*/ fullcpu__DOT__blue__DOT__A;
    IData/*31:0*/ fullcpu__DOT__topregalu__DOT__ALUout;
    IData/*31:0*/ fullcpu__DOT__topregalu__DOT__ALUop1;
    IData/*31:0*/ fullcpu__DOT__topregalu__DOT__ALUop2;
    IData/*31:0*/ fullcpu__DOT__topregalu__DOT__regOp2;
    IData/*31:0*/ __Vchglast__TOP__fullcpu__DOT__ImmOp;
    VlUnpacked<CData/*7:0*/, 56> fullcpu__DOT__blue__DOT__mem__DOT__rom_array;
    VlUnpacked<IData/*31:0*/, 32> fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array;
    VlUnpacked<IData/*31:0*/, 256> fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array;
    VlUnpacked<CData/*0:0*/, 3> __Vm_traceActivity;

    // INTERNAL VARIABLES
    Vfullcpu__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vfullcpu___024root(Vfullcpu__Syms* symsp, const char* name);
    ~Vfullcpu___024root();
    VL_UNCOPYABLE(Vfullcpu___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
