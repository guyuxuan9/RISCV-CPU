// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfullcpu.h for the primary calling header

#include "verilated.h"

#include "Vfullcpu___024root.h"

VL_INLINE_OPT void Vfullcpu___024root___sequent__TOP__0(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___sequent__TOP__0\n"); );
    // Init
    CData/*4:0*/ __Vdlyvdim0__fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array__v0;
    IData/*31:0*/ __Vdlyvval__fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array__v0;
    CData/*0:0*/ __Vdlyvset__fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array__v0;
    CData/*7:0*/ __Vdlyvdim0__fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array__v0;
    IData/*31:0*/ __Vdlyvval__fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array__v0;
    CData/*0:0*/ __Vdlyvset__fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array__v0;
    // Body
    __Vdlyvset__fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array__v0 = 0U;
    __Vdlyvset__fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array__v0 = 0U;
    if (vlSelf->fullcpu__DOT__MemWrite) {
        __Vdlyvval__fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array__v0 
            = vlSelf->fullcpu__DOT__topregalu__DOT__regOp2;
        __Vdlyvset__fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array__v0 = 1U;
        __Vdlyvdim0__fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array__v0 
            = (0xffU & vlSelf->fullcpu__DOT__topregalu__DOT__ALUout);
    }
    if (vlSelf->fullcpu__DOT__RegWrite) {
        __Vdlyvval__fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array__v0 
            = ((IData)(vlSelf->fullcpu__DOT__ResultSrc)
                ? vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array
               [(0xffU & vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)]
                : vlSelf->fullcpu__DOT__topregalu__DOT__ALUout);
        __Vdlyvset__fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array__v0 = 1U;
        __Vdlyvdim0__fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array__v0 
            = (0x1fU & (vlSelf->fullcpu__DOT__Instr 
                        >> 7U));
    }
    vlSelf->fullcpu__DOT__blue__DOT__A = ((IData)(vlSelf->rst)
                                           ? 0U : ((IData)(vlSelf->fullcpu__DOT__PCsrc)
                                                    ? 
                                                   (vlSelf->fullcpu__DOT__blue__DOT__A 
                                                    + vlSelf->fullcpu__DOT__ImmOp)
                                                    : 
                                                   ((IData)(4U) 
                                                    + vlSelf->fullcpu__DOT__blue__DOT__A)));
    if (__Vdlyvset__fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array__v0) {
        vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array[__Vdlyvdim0__fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array__v0] 
            = __Vdlyvval__fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array__v0;
    }
    if (__Vdlyvset__fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array__v0) {
        vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[__Vdlyvdim0__fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array__v0] 
            = __Vdlyvval__fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array__v0;
    }
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
    if ((0x13U == (0x7fU & vlSelf->fullcpu__DOT__Instr))) {
        vlSelf->fullcpu__DOT__ALUctrl = 0U;
        vlSelf->fullcpu__DOT__ALUsrc = 1U;
    }
    vlSelf->fullcpu__DOT__topregalu__DOT__regOp2 = 
        ((0U == (0x1fU & (vlSelf->fullcpu__DOT__Instr 
                          >> 0x14U))) ? 0U : vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array
         [(0x1fU & (vlSelf->fullcpu__DOT__Instr >> 0x14U))]);
}

VL_INLINE_OPT void Vfullcpu___024root___combo__TOP__0(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___combo__TOP__0\n"); );
    // Body
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

void Vfullcpu___024root___eval(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___eval\n"); );
    // Body
    if (((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk)))) {
        Vfullcpu___024root___sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
    }
    Vfullcpu___024root___combo__TOP__0(vlSelf);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

QData Vfullcpu___024root___change_request_1(Vfullcpu___024root* vlSelf);

VL_INLINE_OPT QData Vfullcpu___024root___change_request(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___change_request\n"); );
    // Body
    return (Vfullcpu___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData Vfullcpu___024root___change_request_1(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    __req |= ((vlSelf->fullcpu__DOT__ImmOp ^ vlSelf->__Vchglast__TOP__fullcpu__DOT__ImmOp));
    VL_DEBUG_IF( if(__req && ((vlSelf->fullcpu__DOT__ImmOp ^ vlSelf->__Vchglast__TOP__fullcpu__DOT__ImmOp))) VL_DBG_MSGF("        CHANGE: fullcpu.sv:10: fullcpu.ImmOp\n"); );
    // Final
    vlSelf->__Vchglast__TOP__fullcpu__DOT__ImmOp = vlSelf->fullcpu__DOT__ImmOp;
    return __req;
}

#ifdef VL_DEBUG
void Vfullcpu___024root___eval_debug_assertions(Vfullcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
}
#endif  // VL_DEBUG
