// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vfullcpu__Syms.h"


VL_ATTR_COLD void Vfullcpu___024root__trace_init_sub__TOP__0(Vfullcpu___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBit(c+59,"clk", false,-1);
    tracep->declBit(c+60,"rst", false,-1);
    tracep->declBit(c+61,"trigger", false,-1);
    tracep->declBus(c+62,"a0", false,-1, 31,0);
    tracep->pushNamePrefix("fullcpu ");
    tracep->declBus(c+66,"DATA_WIDTH", false,-1, 31,0);
    tracep->declBit(c+59,"clk", false,-1);
    tracep->declBit(c+60,"rst", false,-1);
    tracep->declBit(c+61,"trigger", false,-1);
    tracep->declBus(c+62,"a0", false,-1, 31,0);
    tracep->declBit(c+53,"PCsrc", false,-1);
    tracep->declBus(c+54,"ImmOp", false,-1, 31,0);
    tracep->declBus(c+1,"Instr", false,-1, 31,0);
    tracep->declBit(c+55,"Zero", false,-1);
    tracep->declBit(c+2,"RegWrite", false,-1);
    tracep->declBus(c+3,"ALUctrl", false,-1, 2,0);
    tracep->declBit(c+4,"ALUsrc", false,-1);
    tracep->declBus(c+56,"ImmSrc", false,-1, 2,0);
    tracep->declBit(c+5,"MemWrite", false,-1);
    tracep->declBit(c+6,"ResultSrc", false,-1);
    tracep->declBus(c+7,"PC", false,-1, 31,0);
    tracep->declBit(c+8,"jalmuxSel", false,-1);
    tracep->declBit(c+9,"jalrmuxSel", false,-1);
    tracep->declBus(c+10,"rd1", false,-1, 31,0);
    tracep->pushNamePrefix("blue ");
    tracep->declBus(c+66,"ADDRESS_WIDTH", false,-1, 31,0);
    tracep->declBus(c+66,"DATAOUT_WIDTH", false,-1, 31,0);
    tracep->declBit(c+53,"PCsrc", false,-1);
    tracep->declBit(c+59,"clk", false,-1);
    tracep->declBit(c+60,"rst", false,-1);
    tracep->declBit(c+61,"trigger", false,-1);
    tracep->declBus(c+54,"ImmOp", false,-1, 31,0);
    tracep->declBit(c+9,"jalrmuxSel", false,-1);
    tracep->declBus(c+10,"rd1", false,-1, 31,0);
    tracep->declBus(c+1,"RD", false,-1, 31,0);
    tracep->declBus(c+7,"PC_out", false,-1, 31,0);
    tracep->declBus(c+7,"A", false,-1, 31,0);
    tracep->pushNamePrefix("mem ");
    tracep->declBus(c+66,"ADDRESS_WIDTH", false,-1, 31,0);
    tracep->declBus(c+66,"DATAOUT_WIDTH", false,-1, 31,0);
    tracep->declBus(c+67,"DATA_WIDTH", false,-1, 31,0);
    tracep->declBus(c+7,"A", false,-1, 31,0);
    tracep->declBus(c+1,"RD", false,-1, 31,0);
    tracep->popNamePrefix(1);
    tracep->pushNamePrefix("pc ");
    tracep->declBus(c+66,"address_width", false,-1, 31,0);
    tracep->declBit(c+53,"PCsrc", false,-1);
    tracep->declBit(c+59,"clk", false,-1);
    tracep->declBit(c+60,"rst", false,-1);
    tracep->declBit(c+61,"trigger", false,-1);
    tracep->declBus(c+54,"ImmOp", false,-1, 31,0);
    tracep->declBit(c+9,"jalrmuxSel", false,-1);
    tracep->declBus(c+10,"rd1", false,-1, 31,0);
    tracep->declBus(c+7,"PC", false,-1, 31,0);
    tracep->popNamePrefix(2);
    tracep->pushNamePrefix("controlunit ");
    tracep->declBus(c+66,"ADDRESS_WIDTH", false,-1, 31,0);
    tracep->declBus(c+11,"op", false,-1, 6,0);
    tracep->declBus(c+12,"funct3", false,-1, 3,0);
    tracep->declBit(c+13,"funct7", false,-1);
    tracep->declBit(c+55,"Zero", false,-1);
    tracep->declBit(c+2,"RegWrite", false,-1);
    tracep->declBus(c+3,"ALUctrl", false,-1, 2,0);
    tracep->declBit(c+4,"ALUsrc", false,-1);
    tracep->declBus(c+56,"ImmSrc", false,-1, 2,0);
    tracep->declBit(c+53,"PCsrc", false,-1);
    tracep->declBit(c+5,"MemWrite", false,-1);
    tracep->declBit(c+6,"ResultSrc", false,-1);
    tracep->declBit(c+8,"jalmuxSel", false,-1);
    tracep->declBit(c+9,"jalrmuxSel", false,-1);
    tracep->popNamePrefix(1);
    tracep->pushNamePrefix("signextend ");
    tracep->declBus(c+66,"ADDRESS_WIDTH", false,-1, 31,0);
    tracep->declBus(c+1,"instr", false,-1, 31,0);
    tracep->declBus(c+56,"ImmSrc", false,-1, 2,0);
    tracep->declBus(c+54,"ImmExt", false,-1, 31,0);
    tracep->popNamePrefix(1);
    tracep->pushNamePrefix("topregalu ");
    tracep->declBus(c+66,"DATA_WIDTH", false,-1, 31,0);
    tracep->declBus(c+68,"ADDRESS_WIDTH", false,-1, 31,0);
    tracep->declBit(c+59,"clk", false,-1);
    tracep->declBus(c+14,"rs1", false,-1, 4,0);
    tracep->declBus(c+15,"rs2", false,-1, 4,0);
    tracep->declBus(c+16,"rd", false,-1, 4,0);
    tracep->declBit(c+2,"RegWrite", false,-1);
    tracep->declBit(c+4,"ALUsrc", false,-1);
    tracep->declBit(c+6,"ResultSrc", false,-1);
    tracep->declBit(c+5,"MemWrite", false,-1);
    tracep->declBus(c+3,"ALUCtrl", false,-1, 2,0);
    tracep->declBus(c+54,"ImmOp", false,-1, 31,0);
    tracep->declQuad(c+17,"PC", false,-1, 32,0);
    tracep->declBit(c+8,"jalmuxSel", false,-1);
    tracep->declBit(c+55,"eq", false,-1);
    tracep->declBus(c+62,"a0", false,-1, 31,0);
    tracep->declBus(c+10,"rd1", false,-1, 31,0);
    tracep->declBus(c+57,"ALUout", false,-1, 31,0);
    tracep->declBus(c+10,"ALUop1", false,-1, 31,0);
    tracep->declBus(c+58,"ALUop2", false,-1, 31,0);
    tracep->declBus(c+19,"regOp2", false,-1, 31,0);
    tracep->declBus(c+63,"ReadData", false,-1, 31,0);
    tracep->declBus(c+64,"Results", false,-1, 31,0);
    tracep->declBus(c+65,"jalmuxOut", false,-1, 31,0);
    tracep->pushNamePrefix("ALU ");
    tracep->declBus(c+66,"DATA_WIDTH", false,-1, 31,0);
    tracep->declBus(c+10,"ALUSrcA", false,-1, 31,0);
    tracep->declBus(c+58,"ALUSrcB", false,-1, 31,0);
    tracep->declBus(c+3,"ALUControl", false,-1, 2,0);
    tracep->declBit(c+55,"Zero", false,-1);
    tracep->declBus(c+57,"ALUResult", false,-1, 31,0);
    tracep->popNamePrefix(1);
    tracep->pushNamePrefix("MUX ");
    tracep->declBus(c+66,"DATA_WIDTH", false,-1, 31,0);
    tracep->declBus(c+19,"d0", false,-1, 31,0);
    tracep->declBus(c+54,"d1", false,-1, 31,0);
    tracep->declBit(c+4,"s", false,-1);
    tracep->declBus(c+58,"out", false,-1, 31,0);
    tracep->popNamePrefix(1);
    tracep->pushNamePrefix("RegFile ");
    tracep->declBus(c+68,"ADDRESS_WIDTH", false,-1, 31,0);
    tracep->declBus(c+66,"DATA_WIDTH", false,-1, 31,0);
    tracep->declBit(c+59,"clk", false,-1);
    tracep->declBus(c+14,"A1", false,-1, 4,0);
    tracep->declBus(c+15,"A2", false,-1, 4,0);
    tracep->declBus(c+16,"A3", false,-1, 4,0);
    tracep->declBit(c+2,"WE3", false,-1);
    tracep->declBus(c+65,"WD3", false,-1, 31,0);
    tracep->declBus(c+10,"RD1", false,-1, 31,0);
    tracep->declBus(c+19,"RD2", false,-1, 31,0);
    tracep->declBus(c+62,"a0", false,-1, 31,0);
    for (int i = 0; i < 32; ++i) {
        tracep->declBus(c+20+i*1,"ram_array", true,(i+0), 31,0);
    }
    tracep->popNamePrefix(1);
    tracep->pushNamePrefix("ResultMux ");
    tracep->declBus(c+66,"DATA_WIDTH", false,-1, 31,0);
    tracep->declBus(c+57,"d0", false,-1, 31,0);
    tracep->declBus(c+63,"d1", false,-1, 31,0);
    tracep->declBit(c+6,"s", false,-1);
    tracep->declBus(c+64,"out", false,-1, 31,0);
    tracep->popNamePrefix(1);
    tracep->pushNamePrefix("datamemory ");
    tracep->declBus(c+66,"ADDRESS_WIDTH", false,-1, 31,0);
    tracep->declBus(c+66,"DATA_WIDTH", false,-1, 31,0);
    tracep->declBit(c+59,"clk", false,-1);
    tracep->declBit(c+5,"WE", false,-1);
    tracep->declBus(c+57,"A", false,-1, 31,0);
    tracep->declBus(c+19,"WD", false,-1, 31,0);
    tracep->declBus(c+63,"RD", false,-1, 31,0);
    tracep->popNamePrefix(1);
    tracep->pushNamePrefix("jalmux ");
    tracep->declBus(c+66,"DATA_WIDTH", false,-1, 31,0);
    tracep->declBus(c+64,"d0", false,-1, 31,0);
    tracep->declBus(c+52,"d1", false,-1, 31,0);
    tracep->declBit(c+8,"s", false,-1);
    tracep->declBus(c+65,"out", false,-1, 31,0);
    tracep->popNamePrefix(3);
}

VL_ATTR_COLD void Vfullcpu___024root__trace_init_top(Vfullcpu___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root__trace_init_top\n"); );
    // Body
    Vfullcpu___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vfullcpu___024root__trace_full_top_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vfullcpu___024root__trace_chg_top_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vfullcpu___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vfullcpu___024root__trace_register(Vfullcpu___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root__trace_register\n"); );
    // Body
    tracep->addFullCb(&Vfullcpu___024root__trace_full_top_0, vlSelf);
    tracep->addChgCb(&Vfullcpu___024root__trace_chg_top_0, vlSelf);
    tracep->addCleanupCb(&Vfullcpu___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vfullcpu___024root__trace_full_sub_0(Vfullcpu___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vfullcpu___024root__trace_full_top_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root__trace_full_top_0\n"); );
    // Init
    Vfullcpu___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfullcpu___024root*>(voidSelf);
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vfullcpu___024root__trace_full_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vfullcpu___024root__trace_full_sub_0(Vfullcpu___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vfullcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfullcpu___024root__trace_full_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullIData(oldp+1,(vlSelf->fullcpu__DOT__Instr),32);
    bufp->fullBit(oldp+2,(vlSelf->fullcpu__DOT__RegWrite));
    bufp->fullCData(oldp+3,(vlSelf->fullcpu__DOT__ALUctrl),3);
    bufp->fullBit(oldp+4,(vlSelf->fullcpu__DOT__ALUsrc));
    bufp->fullBit(oldp+5,(vlSelf->fullcpu__DOT__MemWrite));
    bufp->fullBit(oldp+6,(vlSelf->fullcpu__DOT__ResultSrc));
    bufp->fullIData(oldp+7,(vlSelf->fullcpu__DOT__blue__DOT__A),32);
    bufp->fullBit(oldp+8,(vlSelf->fullcpu__DOT__jalmuxSel));
    bufp->fullBit(oldp+9,(vlSelf->fullcpu__DOT__jalrmuxSel));
    bufp->fullIData(oldp+10,(vlSelf->fullcpu__DOT__topregalu__DOT__ALUop1),32);
    bufp->fullCData(oldp+11,((0x7fU & vlSelf->fullcpu__DOT__Instr)),7);
    bufp->fullCData(oldp+12,((7U & (vlSelf->fullcpu__DOT__Instr 
                                    >> 0xcU))),4);
    bufp->fullBit(oldp+13,((1U & (vlSelf->fullcpu__DOT__Instr 
                                  >> 0x1eU))));
    bufp->fullCData(oldp+14,((0x1fU & (vlSelf->fullcpu__DOT__Instr 
                                       >> 0xfU))),5);
    bufp->fullCData(oldp+15,((0x1fU & (vlSelf->fullcpu__DOT__Instr 
                                       >> 0x14U))),5);
    bufp->fullCData(oldp+16,((0x1fU & (vlSelf->fullcpu__DOT__Instr 
                                       >> 7U))),5);
    bufp->fullQData(oldp+17,((QData)((IData)(vlSelf->fullcpu__DOT__blue__DOT__A))),33);
    bufp->fullIData(oldp+19,(vlSelf->fullcpu__DOT__topregalu__DOT__regOp2),32);
    bufp->fullIData(oldp+20,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[0]),32);
    bufp->fullIData(oldp+21,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[1]),32);
    bufp->fullIData(oldp+22,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[2]),32);
    bufp->fullIData(oldp+23,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[3]),32);
    bufp->fullIData(oldp+24,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[4]),32);
    bufp->fullIData(oldp+25,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[5]),32);
    bufp->fullIData(oldp+26,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[6]),32);
    bufp->fullIData(oldp+27,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[7]),32);
    bufp->fullIData(oldp+28,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[8]),32);
    bufp->fullIData(oldp+29,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[9]),32);
    bufp->fullIData(oldp+30,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[10]),32);
    bufp->fullIData(oldp+31,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[11]),32);
    bufp->fullIData(oldp+32,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[12]),32);
    bufp->fullIData(oldp+33,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[13]),32);
    bufp->fullIData(oldp+34,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[14]),32);
    bufp->fullIData(oldp+35,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[15]),32);
    bufp->fullIData(oldp+36,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[16]),32);
    bufp->fullIData(oldp+37,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[17]),32);
    bufp->fullIData(oldp+38,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[18]),32);
    bufp->fullIData(oldp+39,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[19]),32);
    bufp->fullIData(oldp+40,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[20]),32);
    bufp->fullIData(oldp+41,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[21]),32);
    bufp->fullIData(oldp+42,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[22]),32);
    bufp->fullIData(oldp+43,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[23]),32);
    bufp->fullIData(oldp+44,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[24]),32);
    bufp->fullIData(oldp+45,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[25]),32);
    bufp->fullIData(oldp+46,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[26]),32);
    bufp->fullIData(oldp+47,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[27]),32);
    bufp->fullIData(oldp+48,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[28]),32);
    bufp->fullIData(oldp+49,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[29]),32);
    bufp->fullIData(oldp+50,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[30]),32);
    bufp->fullIData(oldp+51,(vlSelf->fullcpu__DOT__topregalu__DOT__RegFile__DOT__ram_array[31]),32);
    bufp->fullIData(oldp+52,(((IData)(4U) + vlSelf->fullcpu__DOT__blue__DOT__A)),32);
    bufp->fullBit(oldp+53,(vlSelf->fullcpu__DOT__PCsrc));
    bufp->fullIData(oldp+54,(vlSelf->fullcpu__DOT__ImmOp),32);
    bufp->fullBit(oldp+55,(vlSelf->fullcpu__DOT__Zero));
    bufp->fullCData(oldp+56,(vlSelf->fullcpu__DOT__ImmSrc),3);
    bufp->fullIData(oldp+57,(vlSelf->fullcpu__DOT__topregalu__DOT__ALUout),32);
    bufp->fullIData(oldp+58,(vlSelf->fullcpu__DOT__topregalu__DOT__ALUop2),32);
    bufp->fullBit(oldp+59,(vlSelf->clk));
    bufp->fullBit(oldp+60,(vlSelf->rst));
    bufp->fullBit(oldp+61,(vlSelf->trigger));
    bufp->fullIData(oldp+62,(vlSelf->a0),32);
    bufp->fullIData(oldp+63,(vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array
                             [(0xffU & vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)]),32);
    bufp->fullIData(oldp+64,(((IData)(vlSelf->fullcpu__DOT__ResultSrc)
                               ? vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array
                              [(0xffU & vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)]
                               : vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)),32);
    bufp->fullIData(oldp+65,(((IData)(vlSelf->fullcpu__DOT__jalmuxSel)
                               ? ((IData)(4U) + vlSelf->fullcpu__DOT__blue__DOT__A)
                               : ((IData)(vlSelf->fullcpu__DOT__ResultSrc)
                                   ? vlSelf->fullcpu__DOT__topregalu__DOT__datamemory__DOT__ram_array
                                  [(0xffU & vlSelf->fullcpu__DOT__topregalu__DOT__ALUout)]
                                   : vlSelf->fullcpu__DOT__topregalu__DOT__ALUout))),32);
    bufp->fullIData(oldp+66,(0x20U),32);
    bufp->fullIData(oldp+67,(8U),32);
    bufp->fullIData(oldp+68,(5U),32);
}
