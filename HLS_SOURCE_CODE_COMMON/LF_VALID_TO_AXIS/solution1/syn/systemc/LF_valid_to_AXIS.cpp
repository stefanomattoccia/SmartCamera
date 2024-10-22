// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "LF_valid_to_AXIS.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic LF_valid_to_AXIS::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic LF_valid_to_AXIS::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> LF_valid_to_AXIS::ap_ST_st1_fsm_0 = "1";
const sc_lv<32> LF_valid_to_AXIS::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> LF_valid_to_AXIS::ap_const_lv1_1 = "1";
const sc_lv<1> LF_valid_to_AXIS::ap_const_lv1_0 = "0";

LF_valid_to_AXIS::LF_valid_to_AXIS(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( res_load_load_fu_64_p1 );
    sensitive << ( frame_valid_read_read_fu_38_p2 );
    sensitive << ( line_valid_read_read_fu_44_p2 );
    sensitive << ( ap_sig_ioackin_outputStream_V_V_TREADY );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( res_load_load_fu_64_p1 );
    sensitive << ( frame_valid_read_read_fu_38_p2 );
    sensitive << ( line_valid_read_read_fu_44_p2 );
    sensitive << ( ap_sig_ioackin_outputStream_V_V_TREADY );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sig_18);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_45);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( res_load_load_fu_64_p1 );
    sensitive << ( frame_valid_read_read_fu_38_p2 );
    sensitive << ( line_valid_read_read_fu_44_p2 );

    SC_METHOD(thread_ap_sig_80);
    sensitive << ( ap_start );
    sensitive << ( outputStream_V_V_TREADY );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_18 );

    SC_METHOD(thread_ap_sig_ioackin_outputStream_V_V_TREADY);
    sensitive << ( outputStream_V_V_TREADY );
    sensitive << ( ap_reg_ioackin_outputStream_V_V_TREADY );

    SC_METHOD(thread_frame_valid_read_read_fu_38_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( frame_valid );
    sensitive << ( res_load_load_fu_64_p1 );
    sensitive << ( frame_valid_read_read_fu_38_p2 );
    sensitive << ( line_valid_read_read_fu_44_p2 );
    sensitive << ( ap_sig_ioackin_outputStream_V_V_TREADY );

    SC_METHOD(thread_line_valid_read_read_fu_44_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( line_valid );
    sensitive << ( res_load_load_fu_64_p1 );
    sensitive << ( frame_valid_read_read_fu_38_p2 );
    sensitive << ( line_valid_read_read_fu_44_p2 );
    sensitive << ( ap_sig_ioackin_outputStream_V_V_TREADY );

    SC_METHOD(thread_outputStream_V_V_TDATA);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( data_in_V );
    sensitive << ( res_load_load_fu_64_p1 );
    sensitive << ( frame_valid_read_read_fu_38_p2 );
    sensitive << ( line_valid_read_read_fu_44_p2 );

    SC_METHOD(thread_outputStream_V_V_TDATA_blk_n);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( outputStream_V_V_TREADY );
    sensitive << ( res_load_load_fu_64_p1 );
    sensitive << ( frame_valid_read_read_fu_38_p2 );
    sensitive << ( line_valid_read_read_fu_44_p2 );

    SC_METHOD(thread_outputStream_V_V_TVALID);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( res_load_load_fu_64_p1 );
    sensitive << ( frame_valid_read_read_fu_38_p2 );
    sensitive << ( line_valid_read_read_fu_44_p2 );
    sensitive << ( ap_reg_ioackin_outputStream_V_V_TREADY );

    SC_METHOD(thread_res_load_load_fu_64_p1);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( res );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( res_load_load_fu_64_p1 );
    sensitive << ( frame_valid_read_read_fu_38_p2 );
    sensitive << ( line_valid_read_read_fu_44_p2 );
    sensitive << ( ap_sig_ioackin_outputStream_V_V_TREADY );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "1";
    res = "1";
    ap_reg_ioackin_outputStream_V_V_TREADY = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "LF_valid_to_AXIS_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, data_in_V, "(port)data_in_V");
    sc_trace(mVcdFile, frame_valid, "(port)frame_valid");
    sc_trace(mVcdFile, line_valid, "(port)line_valid");
    sc_trace(mVcdFile, outputStream_V_V_TDATA, "(port)outputStream_V_V_TDATA");
    sc_trace(mVcdFile, outputStream_V_V_TVALID, "(port)outputStream_V_V_TVALID");
    sc_trace(mVcdFile, outputStream_V_V_TREADY, "(port)outputStream_V_V_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_18, "ap_sig_18");
    sc_trace(mVcdFile, res, "res");
    sc_trace(mVcdFile, outputStream_V_V_TDATA_blk_n, "outputStream_V_V_TDATA_blk_n");
    sc_trace(mVcdFile, res_load_load_fu_64_p1, "res_load_load_fu_64_p1");
    sc_trace(mVcdFile, frame_valid_read_read_fu_38_p2, "frame_valid_read_read_fu_38_p2");
    sc_trace(mVcdFile, line_valid_read_read_fu_44_p2, "line_valid_read_read_fu_44_p2");
    sc_trace(mVcdFile, ap_sig_ioackin_outputStream_V_V_TREADY, "ap_sig_ioackin_outputStream_V_V_TREADY");
    sc_trace(mVcdFile, ap_reg_ioackin_outputStream_V_V_TREADY, "ap_reg_ioackin_outputStream_V_V_TREADY");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_sig_80, "ap_sig_80");
    sc_trace(mVcdFile, ap_sig_45, "ap_sig_45");
#endif

    }
    mHdltvinHandle.open("LF_valid_to_AXIS.hdltvin.dat");
    mHdltvoutHandle.open("LF_valid_to_AXIS.hdltvout.dat");
}

LF_valid_to_AXIS::~LF_valid_to_AXIS() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void LF_valid_to_AXIS::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ioackin_outputStream_V_V_TREADY = ap_const_logic_0;
    } else {
        if (ap_sig_45.read()) {
            if (!(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || (esl_seteq<1,1,1>(res_load_load_fu_64_p1.read(), ap_const_lv1_0) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, frame_valid_read_read_fu_38_p2.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, line_valid_read_read_fu_44_p2.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_outputStream_V_V_TREADY.read())))) {
                ap_reg_ioackin_outputStream_V_V_TREADY = ap_const_logic_0;
            } else if (ap_sig_80.read()) {
                ap_reg_ioackin_outputStream_V_V_TREADY = ap_const_logic_1;
            }
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        res = ap_const_lv1_1;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
             esl_seteq<1,1,1>(ap_const_lv1_0, frame_valid_read_read_fu_38_p2.read()) && 
             !(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || (esl_seteq<1,1,1>(res_load_load_fu_64_p1.read(), ap_const_lv1_0) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, frame_valid_read_read_fu_38_p2.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, line_valid_read_read_fu_44_p2.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_outputStream_V_V_TREADY.read()))) && 
             !esl_seteq<1,1,1>(res_load_load_fu_64_p1.read(), ap_const_lv1_0))) {
            res = ap_const_lv1_0;
        }
    }
}

void LF_valid_to_AXIS::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || (esl_seteq<1,1,1>(res_load_load_fu_64_p1.read(), ap_const_lv1_0) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, frame_valid_read_read_fu_38_p2.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, line_valid_read_read_fu_44_p2.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_outputStream_V_V_TREADY.read()))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void LF_valid_to_AXIS::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void LF_valid_to_AXIS::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || (esl_seteq<1,1,1>(res_load_load_fu_64_p1.read(), ap_const_lv1_0) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, frame_valid_read_read_fu_38_p2.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, line_valid_read_read_fu_44_p2.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_outputStream_V_V_TREADY.read()))))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void LF_valid_to_AXIS::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void LF_valid_to_AXIS::thread_ap_sig_18() {
    ap_sig_18 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void LF_valid_to_AXIS::thread_ap_sig_45() {
    ap_sig_45 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && esl_seteq<1,1,1>(res_load_load_fu_64_p1.read(), ap_const_lv1_0) && !esl_seteq<1,1,1>(ap_const_lv1_0, frame_valid_read_read_fu_38_p2.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, line_valid_read_read_fu_44_p2.read()));
}

void LF_valid_to_AXIS::thread_ap_sig_80() {
    ap_sig_80 = (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_const_logic_1, outputStream_V_V_TREADY.read()));
}

void LF_valid_to_AXIS::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_18.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void LF_valid_to_AXIS::thread_ap_sig_ioackin_outputStream_V_V_TREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outputStream_V_V_TREADY.read())) {
        ap_sig_ioackin_outputStream_V_V_TREADY = outputStream_V_V_TREADY.read();
    } else {
        ap_sig_ioackin_outputStream_V_V_TREADY = ap_const_logic_1;
    }
}

void LF_valid_to_AXIS::thread_frame_valid_read_read_fu_38_p2() {
    frame_valid_read_read_fu_38_p2 =  (sc_lv<1>) (frame_valid.read());
}

void LF_valid_to_AXIS::thread_line_valid_read_read_fu_44_p2() {
    line_valid_read_read_fu_44_p2 =  (sc_lv<1>) (line_valid.read());
}

void LF_valid_to_AXIS::thread_outputStream_V_V_TDATA() {
    outputStream_V_V_TDATA = data_in_V.read();
}

void LF_valid_to_AXIS::thread_outputStream_V_V_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         esl_seteq<1,1,1>(res_load_load_fu_64_p1.read(), ap_const_lv1_0) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, frame_valid_read_read_fu_38_p2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, line_valid_read_read_fu_44_p2.read()))) {
        outputStream_V_V_TDATA_blk_n = outputStream_V_V_TREADY.read();
    } else {
        outputStream_V_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void LF_valid_to_AXIS::thread_outputStream_V_V_TVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         esl_seteq<1,1,1>(res_load_load_fu_64_p1.read(), ap_const_lv1_0) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, frame_valid_read_read_fu_38_p2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, line_valid_read_read_fu_44_p2.read()) && 
         !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outputStream_V_V_TREADY.read()))) {
        outputStream_V_V_TVALID = ap_const_logic_1;
    } else {
        outputStream_V_V_TVALID = ap_const_logic_0;
    }
}

void LF_valid_to_AXIS::thread_res_load_load_fu_64_p1() {
    res_load_load_fu_64_p1 = res.read();
}

void LF_valid_to_AXIS::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

void LF_valid_to_AXIS::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"data_in_V\" :  \"" << data_in_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"frame_valid\" :  \"" << frame_valid.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"line_valid\" :  \"" << line_valid.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outputStream_V_V_TDATA\" :  \"" << outputStream_V_V_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outputStream_V_V_TVALID\" :  \"" << outputStream_V_V_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"outputStream_V_V_TREADY\" :  \"" << outputStream_V_V_TREADY.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

