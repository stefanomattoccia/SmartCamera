// -- (c) Copyright 2009 - 2014 Xilinx, Inc. All rights reserved.
// --
// -- This file contains confidential and proprietary information
// -- of Xilinx, Inc. and is protected under U.S. and 
// -- international copyright and other intellectual property
// -- laws.
// --
// -- DISCLAIMER
// -- This disclaimer is not a license and does not grant any
// -- rights to the materials distributed herewith. Except as
// -- otherwise provided in a valid license issued to you by
// -- Xilinx, and to the maximum extent permitted by applicable
// -- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// -- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// -- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// -- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// -- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// -- (2) Xilinx shall not be liable (whether in contract or tort,
// -- including negligence, or under any other theory of
// -- liability) for any loss or damage of any kind or nature
// -- related to, arising under or in connection with these
// -- materials, including for any direct, or any indirect,
// -- special, incidental, or consequential loss or damage
// -- (including loss of data, profits, goodwill, or any type of
// -- loss or damage suffered as a result of any action brought
// -- by a third party) even if such damage or loss was
// -- reasonably foreseeable or Xilinx had been advised of the
// -- possibility of the same.
// --
// -- CRITICAL APPLICATIONS
// -- Xilinx products are not designed or intended to be fail-
// -- safe, or for use in any application requiring fail-safe
// -- performance, such as life-support or safety devices or
// -- systems, Class III medical devices, nuclear facilities,
// -- applications related to the deployment of airbags, or any
// -- other applications that could lead to death, personal
// -- injury, or severe property or environmental damage
// -- (individually and collectively, "Critical
// -- Applications"). Customer assumes the sole risk and
// -- liability of any use of Xilinx products in Critical
// -- Applications, subject only to applicable laws and
// -- regulations governing limitations on product liability.
// --
// -- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// -- PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
//
// File name: decerr_slave.v
//
// Description: 
//   Phantom slave interface used to complete W, R and B channel transfers when an
//   erroneous transaction is trapped.
//--------------------------------------------------------------------------
//
// Structure:
//    decerr_slave
//    
//-----------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi_mmu_v2_1_7_decerr_slave #
  (
   parameter integer C_AXI_ID_WIDTH           = 1,
   parameter integer C_AXI_DATA_WIDTH         = 32,
   parameter integer C_AXI_BUSER_WIDTH        = 1,
   parameter integer C_AXI_RUSER_WIDTH        = 1,
   parameter integer C_AXI_PROTOCOL           = 0,
   parameter integer C_AXI_SUPPORTS_WRITE     = 1,
   parameter integer C_AXI_SUPPORTS_READ      = 1,
   parameter integer C_RESP                   = 2'b11  // DECERR
   )
  (
   input  wire                          aclk,
   input  wire                          aresetn,
   input  wire [(C_AXI_ID_WIDTH-1):0]   s_axi_awid,
   input  wire                          s_axi_awvalid,
   output wire                          s_axi_awready,
   input  wire                          s_axi_wlast,
   input  wire                          s_axi_wvalid,
   output wire                          s_axi_wready,
   output wire [(C_AXI_ID_WIDTH-1):0]   s_axi_bid,
   output wire [1:0]                    s_axi_bresp,
   output wire [C_AXI_BUSER_WIDTH-1:0]  s_axi_buser,
   output wire                          s_axi_bvalid,
   input  wire                          s_axi_bready,
   input  wire [(C_AXI_ID_WIDTH-1):0]   s_axi_arid,
   input  wire [7:0]                    s_axi_arlen,
   input  wire                          s_axi_arvalid,
   output wire                          s_axi_arready,
   output wire [(C_AXI_ID_WIDTH-1):0]   s_axi_rid,
   output wire [(C_AXI_DATA_WIDTH-1):0] s_axi_rdata,
   output wire [1:0]                    s_axi_rresp,
   output wire [C_AXI_RUSER_WIDTH-1:0]  s_axi_ruser,
   output wire                          s_axi_rlast,
   output wire                          s_axi_rvalid,
   input  wire                          s_axi_rready
   );
   
  localparam P_WRITE_IDLE = 2'b00;
  localparam P_WRITE_DATA = 2'b01;
  localparam P_WRITE_RESP = 2'b10;
  localparam P_READ_IDLE = 1'b0;
  localparam P_READ_DATA = 1'b1;
  localparam integer  P_AXI4 = 0;
  localparam integer  P_AXI3 = 1;
  localparam integer  P_AXILITE = 2;
   
  assign s_axi_rdata   = {C_AXI_DATA_WIDTH{1'b0}};
  assign s_axi_buser   = {C_AXI_BUSER_WIDTH{1'b0}};
  assign s_axi_ruser   = {C_AXI_RUSER_WIDTH{1'b0}};
  
  generate
  
  if (C_AXI_PROTOCOL == P_AXILITE) begin : gen_axilite
    
    assign s_axi_rlast = 1'b1;
    assign s_axi_bid = 0;
    assign s_axi_rid = 0;
    
    if (C_AXI_SUPPORTS_WRITE) begin : gen_write
      
      reg s_axi_awready_i;
      reg s_axi_wready_i;
      reg s_axi_bvalid_i;
      
      assign s_axi_bresp   = C_RESP;
      assign s_axi_awready = s_axi_awready_i;
      assign s_axi_wready  = s_axi_wready_i;
      assign s_axi_bvalid  = s_axi_bvalid_i;
      
      always @(posedge aclk) begin
        if (~aresetn) begin
          s_axi_awready_i <= 1'b0;
          s_axi_wready_i <= 1'b0;
          s_axi_bvalid_i <= 1'b0;
        end else begin
          if (s_axi_bvalid_i) begin
            if (s_axi_bready) begin
              s_axi_bvalid_i <= 1'b0;
            end
          end else if (s_axi_awvalid & s_axi_wvalid) begin
            if (s_axi_awready_i) begin
              s_axi_awready_i <= 1'b0;
              s_axi_wready_i <= 1'b0;
              s_axi_bvalid_i <= 1'b1;
            end else begin
              s_axi_awready_i <= 1'b1;
              s_axi_wready_i <= 1'b1;
            end
          end
        end
      end
      
    end else begin : gen_w_tieoff
      
      assign s_axi_bresp   = 2'b0;
      assign s_axi_awready = 1'b0;
      assign s_axi_wready  = 1'b0;
      assign s_axi_bvalid  = 1'b0;
      
    end  // gen_write
             
    if (C_AXI_SUPPORTS_READ) begin : gen_read
      
      reg s_axi_arready_i;
      reg s_axi_rvalid_i;

      assign s_axi_rresp   = C_RESP;
      assign s_axi_arready = s_axi_arready_i;
      assign s_axi_rvalid  = s_axi_rvalid_i;
      
      always @(posedge aclk) begin
        if (~aresetn) begin
          s_axi_arready_i <= 1'b0;
          s_axi_rvalid_i <= 1'b0;
        end else begin
          if (s_axi_rvalid_i) begin
            if (s_axi_rready) begin
              s_axi_rvalid_i <= 1'b0;
            end
          end else if (s_axi_arvalid & s_axi_arready_i) begin
            s_axi_arready_i <= 1'b0;
            s_axi_rvalid_i <= 1'b1;
          end else begin
            s_axi_arready_i <= 1'b1;
          end
        end
      end
        
    end else begin : gen_r_tieoff
      
      assign s_axi_rresp   = 2'b0;
      assign s_axi_arready = 1'b0;
      assign s_axi_rvalid  = 1'b0;
      
    end  // gen_read
    
  end else begin : gen_axi
  
    if (C_AXI_SUPPORTS_WRITE) begin : gen_write
      
      reg s_axi_awready_i;
      reg s_axi_wready_i;
      reg s_axi_bvalid_i;
      reg [(C_AXI_ID_WIDTH-1):0] s_axi_bid_i;
      reg [1:0] write_cs;
    
      assign s_axi_bresp   = C_RESP;
      assign s_axi_awready = s_axi_awready_i;
      assign s_axi_wready  = s_axi_wready_i;
      assign s_axi_bvalid  = s_axi_bvalid_i;
      assign s_axi_bid = s_axi_bid_i;
    
      always @(posedge aclk) begin
        if (~aresetn) begin
          write_cs <= P_WRITE_IDLE;
          s_axi_awready_i <= 1'b0;
          s_axi_wready_i <= 1'b0;
          s_axi_bvalid_i <= 1'b0;
          s_axi_bid_i <= 0;
        end else begin
          case (write_cs) 
            P_WRITE_IDLE: 
              begin
                if (s_axi_awvalid & s_axi_awready_i) begin
                  s_axi_awready_i <= 1'b0;
                  s_axi_bid_i <= s_axi_awid;
                  s_axi_wready_i <= 1'b1;
                  write_cs <= P_WRITE_DATA;
                end else begin
                  s_axi_awready_i <= 1'b1;
                end
              end
            P_WRITE_DATA:
              begin
                if (s_axi_wvalid & s_axi_wlast) begin
                  s_axi_wready_i <= 1'b0;
                  s_axi_bvalid_i <= 1'b1;
                  write_cs <= P_WRITE_RESP;
                end
              end
            P_WRITE_RESP:
              begin
                if (s_axi_bready) begin
                  s_axi_bvalid_i <= 1'b0;
                  s_axi_awready_i <= 1'b1;
                  write_cs <= P_WRITE_IDLE;
                end
              end
          endcase
        end
      end

    end else begin : gen_w_tieoff
      
      assign s_axi_bresp   = 2'b0;
      assign s_axi_awready = 1'b0;
      assign s_axi_wready  = 1'b0;
      assign s_axi_bvalid  = 1'b0;
      assign s_axi_bid = 0;
      
    end  // gen_write

    if (C_AXI_SUPPORTS_READ) begin : gen_read
      
      reg s_axi_arready_i;
      reg s_axi_rvalid_i;
      reg [7:0] read_cnt;
      reg s_axi_rlast_i;
      reg [(C_AXI_ID_WIDTH-1):0] s_axi_rid_i;
      reg [0:0] read_cs;

      assign s_axi_rresp   = C_RESP;
      assign s_axi_arready = s_axi_arready_i;
      assign s_axi_rvalid  = s_axi_rvalid_i;
      assign s_axi_rlast = s_axi_rlast_i;
      assign s_axi_rid = s_axi_rid_i;
      
      always @(posedge aclk) begin
        if (~aresetn) begin
          read_cs <= P_READ_IDLE;
          s_axi_arready_i <= 1'b0;
          s_axi_rvalid_i <= 1'b0;
          s_axi_rlast_i <= 1'b0;
          s_axi_rid_i <= 0;
          read_cnt <= 0;
        end else begin
          case (read_cs) 
            P_READ_IDLE: 
              begin
                if (s_axi_arvalid & s_axi_arready_i) begin
                  s_axi_arready_i <= 1'b0;
                  s_axi_rid_i <= s_axi_arid;
                  read_cnt <= s_axi_arlen;
                  s_axi_rvalid_i <= 1'b1;
                  if (s_axi_arlen == 0) begin
                    s_axi_rlast_i <= 1'b1;
                  end else begin
                    s_axi_rlast_i <= 1'b0;
                  end
                  read_cs <= P_READ_DATA;
                end else begin
                  s_axi_arready_i <= 1'b1;
                end
              end
            P_READ_DATA:
              begin
                if (s_axi_rready) begin
                  if (read_cnt == 0) begin
                    s_axi_rvalid_i <= 1'b0;
                    s_axi_rlast_i <= 1'b0;
                    s_axi_arready_i <= 1'b1;
                    read_cs <= P_READ_IDLE;
                  end else begin
                    if (read_cnt == 1) begin
                      s_axi_rlast_i <= 1'b1;
                    end
                    read_cnt <= read_cnt - 1;
                  end
                end
              end
          endcase
        end
      end
  
    end else begin : gen_r_tieoff
      
      assign s_axi_rresp   = 2'b0;
      assign s_axi_arready = 1'b0;
      assign s_axi_rvalid  = 1'b0;
      assign s_axi_rlast = 1'b1;
      assign s_axi_rid = 0;
      
    end  // gen_read
    
  end  // gen_axi
  endgenerate

endmodule

`default_nettype wire
