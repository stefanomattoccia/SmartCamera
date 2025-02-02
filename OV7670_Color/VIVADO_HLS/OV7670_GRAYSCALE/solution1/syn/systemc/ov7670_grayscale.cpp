// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ov7670_grayscale.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic ov7670_grayscale::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic ov7670_grayscale::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> ov7670_grayscale::ap_ST_st1_fsm_0 = "1";
const sc_lv<32> ov7670_grayscale::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> ov7670_grayscale::ap_const_lv1_1 = "1";
const sc_lv<1> ov7670_grayscale::ap_const_lv1_0 = "0";

ov7670_grayscale::ov7670_grayscale(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( grayscale_valid_load_load_fu_44_p1 );
    sensitive << ( ap_sig_43 );
    sensitive << ( ap_sig_ioackin_outStream_V_V_TREADY );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( grayscale_valid_load_load_fu_44_p1 );
    sensitive << ( ap_sig_43 );
    sensitive << ( ap_sig_ioackin_outStream_V_V_TREADY );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sig_18);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_39);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( grayscale_valid_load_load_fu_44_p1 );

    SC_METHOD(thread_ap_sig_43);
    sensitive << ( ap_start );
    sensitive << ( inStream_V_V_TVALID );

    SC_METHOD(thread_ap_sig_75);
    sensitive << ( outStream_V_V_TREADY );
    sensitive << ( ap_sig_43 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_18 );

    SC_METHOD(thread_ap_sig_ioackin_outStream_V_V_TREADY);
    sensitive << ( outStream_V_V_TREADY );
    sensitive << ( ap_reg_ioackin_outStream_V_V_TREADY );

    SC_METHOD(thread_grayscale_valid_load_load_fu_44_p1);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( grayscale_valid );

    SC_METHOD(thread_inStream_V_V_TDATA_blk_n);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( inStream_V_V_TVALID );

    SC_METHOD(thread_inStream_V_V_TREADY);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( grayscale_valid_load_load_fu_44_p1 );
    sensitive << ( ap_sig_43 );
    sensitive << ( ap_sig_ioackin_outStream_V_V_TREADY );

    SC_METHOD(thread_outStream_V_V_TDATA);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( inStream_V_V_TDATA );
    sensitive << ( grayscale_valid_load_load_fu_44_p1 );
    sensitive << ( ap_sig_43 );

    SC_METHOD(thread_outStream_V_V_TDATA_blk_n);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( outStream_V_V_TREADY );
    sensitive << ( grayscale_valid_load_load_fu_44_p1 );

    SC_METHOD(thread_outStream_V_V_TVALID);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( grayscale_valid_load_load_fu_44_p1 );
    sensitive << ( ap_sig_43 );
    sensitive << ( ap_reg_ioackin_outStream_V_V_TREADY );

    SC_METHOD(thread_tmp_3_fu_48_p2);
    sensitive << ( grayscale_valid );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grayscale_valid_load_load_fu_44_p1 );
    sensitive << ( ap_sig_43 );
    sensitive << ( ap_sig_ioackin_outStream_V_V_TREADY );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "1";
    grayscale_valid = "0";
    ap_reg_ioackin_outStream_V_V_TREADY = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ov7670_grayscale_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, inStream_V_V_TDATA, "(port)inStream_V_V_TDATA");
    sc_trace(mVcdFile, inStream_V_V_TVALID, "(port)inStream_V_V_TVALID");
    sc_trace(mVcdFile, inStream_V_V_TREADY, "(port)inStream_V_V_TREADY");
    sc_trace(mVcdFile, outStream_V_V_TDATA, "(port)outStream_V_V_TDATA");
    sc_trace(mVcdFile, outStream_V_V_TVALID, "(port)outStream_V_V_TVALID");
    sc_trace(mVcdFile, outStream_V_V_TREADY, "(port)outStream_V_V_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_18, "ap_sig_18");
    sc_trace(mVcdFile, grayscale_valid, "grayscale_valid");
    sc_trace(mVcdFile, inStream_V_V_TDATA_blk_n, "inStream_V_V_TDATA_blk_n");
    sc_trace(mVcdFile, outStream_V_V_TDATA_blk_n, "outStream_V_V_TDATA_blk_n");
    sc_trace(mVcdFile, grayscale_valid_load_load_fu_44_p1, "grayscale_valid_load_load_fu_44_p1");
    sc_trace(mVcdFile, tmp_3_fu_48_p2, "tmp_3_fu_48_p2");
    sc_trace(mVcdFile, ap_sig_43, "ap_sig_43");
    sc_trace(mVcdFile, ap_sig_ioackin_outStream_V_V_TREADY, "ap_sig_ioackin_outStream_V_V_TREADY");
    sc_trace(mVcdFile, ap_reg_ioackin_outStream_V_V_TREADY, "ap_reg_ioackin_outStream_V_V_TREADY");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_sig_75, "ap_sig_75");
    sc_trace(mVcdFile, ap_sig_39, "ap_sig_39");
#endif

    }
    mHdltvinHandle.open("ov7670_grayscale.hdltvin.dat");
    mHdltvoutHandle.open("ov7670_grayscale.hdltvout.dat");
}

ov7670_grayscale::~ov7670_grayscale() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void ov7670_grayscale::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ioackin_outStream_V_V_TREADY = ap_const_logic_0;
    } else {
        if (ap_sig_39.read()) {
            if (!(ap_sig_43.read() || (!esl_seteq<1,1,1>(ap_const_lv1_0, grayscale_valid_load_load_fu_44_p1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_outStream_V_V_TREADY.read())))) {
                ap_reg_ioackin_outStream_V_V_TREADY = ap_const_logic_0;
            } else if (ap_sig_75.read()) {
                ap_reg_ioackin_outStream_V_V_TREADY = ap_const_logic_1;
            }
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        grayscale_valid = ap_const_lv1_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
             !(ap_sig_43.read() || (!esl_seteq<1,1,1>(ap_const_lv1_0, grayscale_valid_load_load_fu_44_p1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_outStream_V_V_TREADY.read()))))) {
            grayscale_valid = tmp_3_fu_48_p2.read();
        }
    }
}

void ov7670_grayscale::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !(ap_sig_43.read() || (!esl_seteq<1,1,1>(ap_const_lv1_0, grayscale_valid_load_load_fu_44_p1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_outStream_V_V_TREADY.read()))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void ov7670_grayscale::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void ov7670_grayscale::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !(ap_sig_43.read() || (!esl_seteq<1,1,1>(ap_const_lv1_0, grayscale_valid_load_load_fu_44_p1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_outStream_V_V_TREADY.read()))))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void ov7670_grayscale::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void ov7670_grayscale::thread_ap_sig_18() {
    ap_sig_18 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void ov7670_grayscale::thread_ap_sig_39() {
    ap_sig_39 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, grayscale_valid_load_load_fu_44_p1.read()));
}

void ov7670_grayscale::thread_ap_sig_43() {
    ap_sig_43 = (esl_seteq<1,1,1>(inStream_V_V_TVALID.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0));
}

void ov7670_grayscale::thread_ap_sig_75() {
    ap_sig_75 = (!ap_sig_43.read() && esl_seteq<1,1,1>(ap_const_logic_1, outStream_V_V_TREADY.read()));
}

void ov7670_grayscale::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_18.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void ov7670_grayscale::thread_ap_sig_ioackin_outStream_V_V_TREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outStream_V_V_TREADY.read())) {
        ap_sig_ioackin_outStream_V_V_TREADY = outStream_V_V_TREADY.read();
    } else {
        ap_sig_ioackin_outStream_V_V_TREADY = ap_const_logic_1;
    }
}

void ov7670_grayscale::thread_grayscale_valid_load_load_fu_44_p1() {
    grayscale_valid_load_load_fu_44_p1 = grayscale_valid.read();
}

void ov7670_grayscale::thread_inStream_V_V_TDATA_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) {
        inStream_V_V_TDATA_blk_n = inStream_V_V_TVALID.read();
    } else {
        inStream_V_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void ov7670_grayscale::thread_inStream_V_V_TREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !(ap_sig_43.read() || (!esl_seteq<1,1,1>(ap_const_lv1_0, grayscale_valid_load_load_fu_44_p1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_outStream_V_V_TREADY.read()))))) {
        inStream_V_V_TREADY = ap_const_logic_1;
    } else {
        inStream_V_V_TREADY = ap_const_logic_0;
    }
}

void ov7670_grayscale::thread_outStream_V_V_TDATA() {
    outStream_V_V_TDATA = inStream_V_V_TDATA.read();
}

void ov7670_grayscale::thread_outStream_V_V_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, grayscale_valid_load_load_fu_44_p1.read()))) {
        outStream_V_V_TDATA_blk_n = outStream_V_V_TREADY.read();
    } else {
        outStream_V_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void ov7670_grayscale::thread_outStream_V_V_TVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, grayscale_valid_load_load_fu_44_p1.read()) && 
         !ap_sig_43.read() && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_outStream_V_V_TREADY.read()))) {
        outStream_V_V_TVALID = ap_const_logic_1;
    } else {
        outStream_V_V_TVALID = ap_const_logic_0;
    }
}

void ov7670_grayscale::thread_tmp_3_fu_48_p2() {
    tmp_3_fu_48_p2 = (grayscale_valid.read() ^ ap_const_lv1_1);
}

void ov7670_grayscale::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

void ov7670_grayscale::thread_hdltv_gen() {
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
        mHdltvinHandle << " , " <<  " \"inStream_V_V_TDATA\" :  \"" << inStream_V_V_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_V_V_TVALID\" :  \"" << inStream_V_V_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"inStream_V_V_TREADY\" :  \"" << inStream_V_V_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_V_V_TDATA\" :  \"" << outStream_V_V_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_V_V_TVALID\" :  \"" << outStream_V_V_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"outStream_V_V_TREADY\" :  \"" << outStream_V_V_TREADY.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

