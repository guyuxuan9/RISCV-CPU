// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfullcpu.h for the primary calling header

#include "verilated.h"

#include "Vfullcpu___024root.h"

VL_ATTR_COLD void Vfullcpu___024root___initial__TOP__0(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___initial__TOP__0\n"); );
    // Init
    VlWide<3>/*95:0*/ __Vtemp_ha95b73db__0;
    // Body
    VL_WRITEF("Loading rom.\n");
    __Vtemp_ha95b73db__0[0U] = 0x2e6d656dU;
    __Vtemp_ha95b73db__0[1U] = 0x65737431U;
    __Vtemp_ha95b73db__0[2U] = 0x74U;
    VL_READMEM_N(true, 8, 28, 0, VL_CVT_PACK_STR_NW(3, __Vtemp_ha95b73db__0)
                 ,  &(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array)
                 , 0, ~0ULL);
}

VL_ATTR_COLD void Vfullcpu___024root___settle__TOP__0(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___settle__TOP__0\n"); );
    // Body
    vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array[0xffU] = 0x12345U;
    vlSelf->a0 = vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array
        [0xaU];
    vlSelf->fullcpu__DOT__Instr = ((((0x1bU >= (0x1fU 
                                                & vlSelf->fullcpu__DOT__blue__DOT__A))
                                      ? vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array
                                     [(0x1fU & vlSelf->fullcpu__DOT__blue__DOT__A)]
                                      : 0U) << 0x18U) 
                                   | ((((0x1bU >= (0x1fU 
                                                   & ((IData)(1U) 
                                                      + vlSelf->fullcpu__DOT__blue__DOT__A)))
                                         ? vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array
                                        [(0x1fU & ((IData)(1U) 
                                                   + vlSelf->fullcpu__DOT__blue__DOT__A))]
                                         : 0U) << 0x10U) 
                                      | ((((0x1bU >= 
                                            (0x1fU 
                                             & ((IData)(2U) 
                                                + vlSelf->fullcpu__DOT__blue__DOT__A)))
                                            ? vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array
                                           [(0x1fU 
                                             & ((IData)(2U) 
                                                + vlSelf->fullcpu__DOT__blue__DOT__A))]
                                            : 0U) << 8U) 
                                         | ((0x1bU 
                                             >= (0x1fU 
                                                 & ((IData)(3U) 
                                                    + vlSelf->fullcpu__DOT__blue__DOT__A)))
                                             ? vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array
                                            [(0x1fU 
                                              & ((IData)(3U) 
                                                 + vlSelf->fullcpu__DOT__blue__DOT__A))]
                                             : 0U))));
    vlSelf->fullcpu__DOT__RegWrite = 0U;
    if ((0x13U == (0x7fU & vlSelf->fullcpu__DOT__Instr))) {
        vlSelf->fullcpu__DOT__RegWrite = 1U;
    }
    vlSelf->fullcpu__DOT__RegWrite = 1U;
    vlSelf->fullcpu__DOT__MemWrite = 0U;
    if ((0x23U == (0x7fU & vlSelf->fullcpu__DOT__Instr))) {
        vlSelf->fullcpu__DOT__MemWrite = 1U;
    }
    vlSelf->fullcpu__DOT__ResultSrc = 0U;
    if ((3U == (0x7fU & vlSelf->fullcpu__DOT__Instr))) {
        vlSelf->fullcpu__DOT__ResultSrc = 1U;
    }
    vlSelf->fullcpu__DOT__ALUctrl = 0U;
    vlSelf->fullcpu__DOT__topregalu__DOT__ALUop1 = 
        ((0U == (0x1fU & (vlSelf->fullcpu__DOT__Instr 
                          >> 0xfU))) ? 0U : vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array
         [(0x1fU & (vlSelf->fullcpu__DOT__Instr >> 0xfU))]);
    vlSelf->fullcpu__DOT__ALUsrc = 0U;
    vlSelf->fullcpu__DOT__topregalu__DOT__regOp2 = 
        ((0U == (0x1fU & (vlSelf->fullcpu__DOT__Instr 
                          >> 0x14U))) ? 0U : vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array
         [(0x1fU & (vlSelf->fullcpu__DOT__Instr >> 0x14U))]);
    if ((0x13U == (0x7fU & vlSelf->fullcpu__DOT__Instr))) {
        vlSelf->fullcpu__DOT__ALUctrl = 0U;
        vlSelf->fullcpu__DOT__ALUsrc = 1U;
    }
    vlSelf->fullcpu__DOT__topregalu__DOT__ALUop2 = 
        ((IData)(vlSelf->fullcpu__DOT__ALUsrc) ? vlSelf->fullcpu__DOT__ImmOp
          : vlSelf->fullcpu__DOT__topregalu__DOT__regOp2);
    if ((0U == (IData)(vlSelf->fullcpu__DOT__ALUctrl))) {
        vlSelf->fullcpu__DOT__topregalu__DOT__ALUout 
            = (vlSelf->fullcpu__DOT__topregalu__DOT__ALUop1 
               + vlSelf->fullcpu__DOT__topregalu__DOT__ALUop2);
    }
    vlSelf->fullcpu__DOT__EQ = (vlSelf->fullcpu__DOT__topregalu__DOT__ALUop1 
                                == vlSelf->fullcpu__DOT__topregalu__DOT__ALUop2);
    vlSelf->fullcpu__DOT__PCsrc = 0U;
    vlSelf->fullcpu__DOT__ImmSrc = 0U;
    if ((0x13U == (0x7fU & vlSelf->fullcpu__DOT__Instr))) {
        vlSelf->fullcpu__DOT__ImmSrc = 0U;
    }
    if ((0x63U == (0x7fU & vlSelf->fullcpu__DOT__Instr))) {
        if ((1U & (~ (IData)(vlSelf->fullcpu__DOT__EQ)))) {
            vlSelf->fullcpu__DOT__PCsrc = 1U;
            vlSelf->fullcpu__DOT__ImmSrc = 2U;
        }
    }
    if ((0U == (IData)(vlSelf->fullcpu__DOT__ImmSrc))) {
        vlSelf->fullcpu__DOT__ImmOp = (((- (IData)(
                                                   (vlSelf->fullcpu__DOT__Instr 
                                                    >> 0x1fU))) 
                                        << 0xcU) | 
                                       (vlSelf->fullcpu__DOT__Instr 
                                        >> 0x14U));
    } else if ((2U == (IData)(vlSelf->fullcpu__DOT__ImmSrc))) {
        vlSelf->fullcpu__DOT__ImmOp = ((0x1fffU & vlSelf->fullcpu__DOT__ImmOp) 
                                       | ((- (IData)(
                                                     (vlSelf->fullcpu__DOT__Instr 
                                                      >> 0x1fU))) 
                                          << 0xdU));
        vlSelf->fullcpu__DOT__ImmOp = ((0xffffe000U 
                                        & vlSelf->fullcpu__DOT__ImmOp) 
                                       | ((0x1000U 
                                           & (vlSelf->fullcpu__DOT__Instr 
                                              >> 0x13U)) 
                                          | ((0x800U 
                                              & (vlSelf->fullcpu__DOT__Instr 
                                                 << 4U)) 
                                             | ((0x7e0U 
                                                 & (vlSelf->fullcpu__DOT__Instr 
                                                    >> 0x14U)) 
                                                | (0x1eU 
                                                   & (vlSelf->fullcpu__DOT__Instr 
                                                      >> 7U))))));
    }
}

VL_ATTR_COLD void Vfullcpu___024root___eval_initial(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___eval_initial\n"); );
    // Body
    Vfullcpu___024root___initial__TOP__0(vlSelf);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

VL_ATTR_COLD void Vfullcpu___024root___eval_settle(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___eval_settle\n"); );
    // Body
    Vfullcpu___024root___settle__TOP__0(vlSelf);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
}

VL_ATTR_COLD void Vfullcpu___024root___final(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___final\n"); );
}

VL_ATTR_COLD void Vfullcpu___024root___ctor_var_reset(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->a0 = VL_RAND_RESET_I(32);
    vlSelf->fullcpu__DOT__PCsrc = VL_RAND_RESET_I(1);
    vlSelf->fullcpu__DOT__ImmOp = VL_RAND_RESET_I(32);
    vlSelf->fullcpu__DOT__Instr = VL_RAND_RESET_I(32);
    vlSelf->fullcpu__DOT__EQ = VL_RAND_RESET_I(1);
    vlSelf->fullcpu__DOT__RegWrite = VL_RAND_RESET_I(1);
    vlSelf->fullcpu__DOT__ALUctrl = VL_RAND_RESET_I(3);
    vlSelf->fullcpu__DOT__ALUsrc = VL_RAND_RESET_I(1);
    vlSelf->fullcpu__DOT__ImmSrc = VL_RAND_RESET_I(3);
    vlSelf->fullcpu__DOT__MemWrite = VL_RAND_RESET_I(1);
    vlSelf->fullcpu__DOT__ResultSrc = VL_RAND_RESET_I(1);
    vlSelf->fullcpu__DOT__blue__DOT__A = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<28; ++__Vi0) {
        vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[__Vi0] = VL_RAND_RESET_I(8);
    }
    vlSelf->fullcpu__DOT__topregalu__DOT__ALUout = VL_RAND_RESET_I(32);
    vlSelf->fullcpu__DOT__topregalu__DOT__ALUop1 = VL_RAND_RESET_I(32);
    vlSelf->fullcpu__DOT__topregalu__DOT__ALUop2 = VL_RAND_RESET_I(32);
    vlSelf->fullcpu__DOT__topregalu__DOT__regOp2 = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<32; ++__Vi0) {
        vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[__Vi0] = VL_RAND_RESET_I(32);
    }
    for (int __Vi0=0; __Vi0<256; ++__Vi0) {
        vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->__Vchglast__TOP__fullcpu__DOT__ImmOp = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<3; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
