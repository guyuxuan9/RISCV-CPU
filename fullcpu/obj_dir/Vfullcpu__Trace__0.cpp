// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vfullcpu__Syms.h"


void Vfullcpu___024root__trace_chg_sub_0(Vfullcpu___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vfullcpu___024root__trace_chg_top_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root__trace_chg_top_0\n"); );
    // Init
    Vfullcpu___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfullcpu___024root*>(voidSelf);
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vfullcpu___024root__trace_chg_sub_0((&vlSymsp->TOP), bufp);
}

void Vfullcpu___024root__trace_chg_sub_0(Vfullcpu___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root__trace_chg_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgIData(oldp+0,(vlSelf->fullcpu__DOT__Instr),32);
        bufp->chgBit(oldp+1,(vlSelf->fullcpu__DOT__RegWrite));
        bufp->chgCData(oldp+2,(vlSelf->fullcpu__DOT__ALUctrl),3);
        bufp->chgBit(oldp+3,(vlSelf->fullcpu__DOT__ALUsrc));
        bufp->chgBit(oldp+4,(vlSelf->fullcpu__DOT__MemWrite));
        bufp->chgBit(oldp+5,(vlSelf->fullcpu__DOT__ResultSrc));
        bufp->chgIData(oldp+6,(vlSelf->fullcpu__DOT__blue__DOT__A),32);
        bufp->chgBit(oldp+7,(vlSelf->fullcpu__DOT__jalmuxSel));
        bufp->chgBit(oldp+8,(vlSelf->fullcpu__DOT__jalrmuxSel));
        bufp->chgIData(oldp+9,(vlSelf->fullcpu__DOT__topregalu__DOT__ALUop1),32);
        bufp->chgCData(oldp+10,((0x7fU & vlSelf->fullcpu__DOT__Instr)),7);
        bufp->chgCData(oldp+11,((7U & (vlSelf->fullcpu__DOT__Instr 
                                       >> 0xcU))),4);
        bufp->chgBit(oldp+12,((1U & (vlSelf->fullcpu__DOT__Instr 
                                     >> 0x1eU))));
        bufp->chgCData(oldp+13,((0x1fU & (vlSelf->fullcpu__DOT__Instr 
                                          >> 0xfU))),5);
        bufp->chgCData(oldp+14,((0x1fU & (vlSelf->fullcpu__DOT__Instr 
                                          >> 0x14U))),5);
        bufp->chgCData(oldp+15,((0x1fU & (vlSelf->fullcpu__DOT__Instr 
                                          >> 7U))),5);
        bufp->chgQData(oldp+16,((QData)((IData)(vlSelf->fullcpu__DOT__blue__DOT__A))),33);
        bufp->chgIData(oldp+18,(vlSelf->fullcpu__DOT__topregalu__DOT__regOp2),32);
        bufp->chgIData(oldp+19,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[0]),32);
        bufp->chgIData(oldp+20,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[1]),32);
        bufp->chgIData(oldp+21,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[2]),32);
        bufp->chgIData(oldp+22,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[3]),32);
        bufp->chgIData(oldp+23,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[4]),32);
        bufp->chgIData(oldp+24,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[5]),32);
        bufp->chgIData(oldp+25,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[6]),32);
        bufp->chgIData(oldp+26,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[7]),32);
        bufp->chgIData(oldp+27,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[8]),32);
        bufp->chgIData(oldp+28,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[9]),32);
        bufp->chgIData(oldp+29,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[10]),32);
        bufp->chgIData(oldp+30,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[11]),32);
        bufp->chgIData(oldp+31,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[12]),32);
        bufp->chgIData(oldp+32,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[13]),32);
        bufp->chgIData(oldp+33,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[14]),32);
        bufp->chgIData(oldp+34,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[15]),32);
        bufp->chgIData(oldp+35,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[16]),32);
        bufp->chgIData(oldp+36,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[17]),32);
        bufp->chgIData(oldp+37,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[18]),32);
        bufp->chgIData(oldp+38,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[19]),32);
        bufp->chgIData(oldp+39,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[20]),32);
        bufp->chgIData(oldp+40,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[21]),32);
        bufp->chgIData(oldp+41,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[22]),32);
        bufp->chgIData(oldp+42,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[23]),32);
        bufp->chgIData(oldp+43,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[24]),32);
        bufp->chgIData(oldp+44,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[25]),32);
        bufp->chgIData(oldp+45,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[26]),32);
        bufp->chgIData(oldp+46,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[27]),32);
        bufp->chgIData(oldp+47,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[28]),32);
        bufp->chgIData(oldp+48,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[29]),32);
        bufp->chgIData(oldp+49,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[30]),32);
        bufp->chgIData(oldp+50,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[31]),32);
        bufp->chgIData(oldp+51,(((IData)(4U) + vlSelf->fullcpu__DOT__blue__DOT__A)),32);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[2U])) {
        bufp->chgBit(oldp+52,(vlSelf->fullcpu__DOT__PCsrc));
        bufp->chgIData(oldp+53,(vlSelf->fullcpu__DOT__ImmOp),32);
        bufp->chgBit(oldp+54,(vlSelf->fullcpu__DOT__Zero));
        bufp->chgCData(oldp+55,(vlSelf->fullcpu__DOT__ImmSrc),3);
        bufp->chgIData(oldp+56,(vlSelf->fullcpu__DOT__topregalu__DOT__ALUout),32);
        bufp->chgIData(oldp+57,(vlSelf->fullcpu__DOT__topregalu__DOT__ALUop2),32);
    }
    bufp->chgBit(oldp+58,(vlSelf->clk));
    bufp->chgBit(oldp+59,(vlSelf->rst));
    bufp->chgIData(oldp+60,(vlSelf->a0),32);
    bufp->chgIData(oldp+61,(vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array
                            [(0xffU & vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)]),32);
    bufp->chgIData(oldp+62,(((IData)(vlSelf->fullcpu__DOT__ResultSrc)
                              ? vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array
                             [(0xffU & vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)]
                              : vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)),32);
    bufp->chgIData(oldp+63,(((IData)(vlSelf->fullcpu__DOT__jalmuxSel)
                              ? ((IData)(4U) + vlSelf->fullcpu__DOT__blue__DOT__A)
                              : ((IData)(vlSelf->fullcpu__DOT__ResultSrc)
                                  ? vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array
                                 [(0xffU & vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)]
                                  : vlSelf->fullcpu__DOT__topregalu__DOT__ALUout))),32);
}

void Vfullcpu___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root__trace_cleanup\n"); );
    // Init
    Vfullcpu___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfullcpu___024root*>(voidSelf);
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
}
