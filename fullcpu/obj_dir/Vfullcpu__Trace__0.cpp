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
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[0U])) {
        bufp->chgCData(oldp+0,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[0]),8);
        bufp->chgCData(oldp+1,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[1]),8);
        bufp->chgCData(oldp+2,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[2]),8);
        bufp->chgCData(oldp+3,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[3]),8);
        bufp->chgCData(oldp+4,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[4]),8);
        bufp->chgCData(oldp+5,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[5]),8);
        bufp->chgCData(oldp+6,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[6]),8);
        bufp->chgCData(oldp+7,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[7]),8);
        bufp->chgCData(oldp+8,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[8]),8);
        bufp->chgCData(oldp+9,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[9]),8);
        bufp->chgCData(oldp+10,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[10]),8);
        bufp->chgCData(oldp+11,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[11]),8);
        bufp->chgCData(oldp+12,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[12]),8);
        bufp->chgCData(oldp+13,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[13]),8);
        bufp->chgCData(oldp+14,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[14]),8);
        bufp->chgCData(oldp+15,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[15]),8);
        bufp->chgCData(oldp+16,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[16]),8);
        bufp->chgCData(oldp+17,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[17]),8);
        bufp->chgCData(oldp+18,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[18]),8);
        bufp->chgCData(oldp+19,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[19]),8);
        bufp->chgCData(oldp+20,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[20]),8);
        bufp->chgCData(oldp+21,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[21]),8);
        bufp->chgCData(oldp+22,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[22]),8);
        bufp->chgCData(oldp+23,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[23]),8);
        bufp->chgCData(oldp+24,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[24]),8);
        bufp->chgCData(oldp+25,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[25]),8);
        bufp->chgCData(oldp+26,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[26]),8);
        bufp->chgCData(oldp+27,(vlSelf->fullcpu__DOT__blue__DOT__mem__DOT__rom_array[27]),8);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgIData(oldp+28,(vlSelf->fullcpu__DOT__Instr),32);
        bufp->chgBit(oldp+29,(vlSelf->fullcpu__DOT__RegWrite));
        bufp->chgCData(oldp+30,(vlSelf->fullcpu__DOT__ALUctrl),3);
        bufp->chgBit(oldp+31,(vlSelf->fullcpu__DOT__ALUsrc));
        bufp->chgBit(oldp+32,(vlSelf->fullcpu__DOT__MemWrite));
        bufp->chgBit(oldp+33,(vlSelf->fullcpu__DOT__ResultSrc));
        bufp->chgIData(oldp+34,(vlSelf->fullcpu__DOT__blue__DOT__A),32);
        bufp->chgCData(oldp+35,((0x7fU & vlSelf->fullcpu__DOT__Instr)),7);
        bufp->chgCData(oldp+36,((0x1fU & (vlSelf->fullcpu__DOT__Instr 
                                          >> 0xfU))),5);
        bufp->chgCData(oldp+37,((0x1fU & (vlSelf->fullcpu__DOT__Instr 
                                          >> 0x14U))),5);
        bufp->chgCData(oldp+38,((0x1fU & (vlSelf->fullcpu__DOT__Instr 
                                          >> 7U))),5);
        bufp->chgIData(oldp+39,(vlSelf->fullcpu__DOT__topregalu__DOT__ALUop1),32);
        bufp->chgIData(oldp+40,(vlSelf->fullcpu__DOT__topregalu__DOT__regOp2),32);
        bufp->chgIData(oldp+41,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[0]),32);
        bufp->chgIData(oldp+42,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[1]),32);
        bufp->chgIData(oldp+43,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[2]),32);
        bufp->chgIData(oldp+44,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[3]),32);
        bufp->chgIData(oldp+45,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[4]),32);
        bufp->chgIData(oldp+46,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[5]),32);
        bufp->chgIData(oldp+47,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[6]),32);
        bufp->chgIData(oldp+48,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[7]),32);
        bufp->chgIData(oldp+49,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[8]),32);
        bufp->chgIData(oldp+50,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[9]),32);
        bufp->chgIData(oldp+51,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[10]),32);
        bufp->chgIData(oldp+52,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[11]),32);
        bufp->chgIData(oldp+53,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[12]),32);
        bufp->chgIData(oldp+54,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[13]),32);
        bufp->chgIData(oldp+55,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[14]),32);
        bufp->chgIData(oldp+56,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[15]),32);
        bufp->chgIData(oldp+57,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[16]),32);
        bufp->chgIData(oldp+58,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[17]),32);
        bufp->chgIData(oldp+59,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[18]),32);
        bufp->chgIData(oldp+60,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[19]),32);
        bufp->chgIData(oldp+61,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[20]),32);
        bufp->chgIData(oldp+62,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[21]),32);
        bufp->chgIData(oldp+63,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[22]),32);
        bufp->chgIData(oldp+64,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[23]),32);
        bufp->chgIData(oldp+65,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[24]),32);
        bufp->chgIData(oldp+66,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[25]),32);
        bufp->chgIData(oldp+67,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[26]),32);
        bufp->chgIData(oldp+68,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[27]),32);
        bufp->chgIData(oldp+69,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[28]),32);
        bufp->chgIData(oldp+70,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[29]),32);
        bufp->chgIData(oldp+71,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[30]),32);
        bufp->chgIData(oldp+72,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[31]),32);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[2U])) {
        bufp->chgBit(oldp+73,(vlSelf->fullcpu__DOT__PCsrc));
        bufp->chgIData(oldp+74,(vlSelf->fullcpu__DOT__ImmOp),32);
        bufp->chgBit(oldp+75,(vlSelf->fullcpu__DOT__EQ));
        bufp->chgCData(oldp+76,(vlSelf->fullcpu__DOT__ImmSrc),3);
        bufp->chgIData(oldp+77,(vlSelf->fullcpu__DOT__topregalu__DOT__ALUout),32);
        bufp->chgIData(oldp+78,(vlSelf->fullcpu__DOT__topregalu__DOT__ALUop2),32);
    }
    bufp->chgBit(oldp+79,(vlSelf->clk));
    bufp->chgBit(oldp+80,(vlSelf->rst));
    bufp->chgIData(oldp+81,(vlSelf->a0),32);
    bufp->chgIData(oldp+82,(vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array
                            [(0xffU & vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)]),32);
    bufp->chgIData(oldp+83,(((IData)(vlSelf->fullcpu__DOT__ResultSrc)
                              ? vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array
                             [(0xffU & vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)]
                              : vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)),32);
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
