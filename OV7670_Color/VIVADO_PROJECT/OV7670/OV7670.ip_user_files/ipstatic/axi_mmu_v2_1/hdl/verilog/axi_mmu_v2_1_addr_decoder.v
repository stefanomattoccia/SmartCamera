// -- (c) Copyright 2010 - 2014 Xilinx, Inc. All rights reserved.
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
// Description: Addr Decoder
// Each received address is compared to a list of address ranges (base, size). 
// The matching range's index (if any) is output combinatorially.
// If the decode is successful, the MATCH output is asserted.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   addr_decoder
//
//--------------------------------------------------------------------------
`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi_mmu_v2_1_7_addr_decoder #
  (
   parameter                       C_FAMILY         = "rtl",
   parameter integer               C_NUM_RANGES     = 1,                        // Number of address ranges [1..256]
   parameter integer               C_NUM_RANGES_LOG = 1,                        // Width of matching range index (min 1)
   parameter integer               C_ADDR_WIDTH     = 32,                       // Width of address operand [2:64]
   parameter [C_NUM_RANGES*64-1:0] C_BASE_ADDR      = {C_NUM_RANGES*64{1'b1}},  // Aligned to 2**C_RANGE_SIZE
   parameter [C_NUM_RANGES*32-1:0] C_RANGE_SIZE     = {C_NUM_RANGES*32{1'b0}},  // Binary power of range size [0=null_range, 1..C_ADDR_WIDTH]
   parameter [C_NUM_RANGES:0]      C_RANGE_QUAL     = {C_NUM_RANGES{1'b1}}      // Range enabled for this decoder instance
   )
  (
   input  wire [C_ADDR_WIDTH-1:0]      addr,        // Decoder input operand
   output wire [C_NUM_RANGES_LOG-1:0]  range_enc,   // Index of matching address range (encoded)
   output wire                         match        // Decode successful
   );
  
  // Generate Variables
  genvar rng;
  
  // Functions
  
  // Function to detect match of one addressable range (returns Boolean).
  function  decode_address (
      input [C_ADDR_WIDTH-1:0] base,
      input [31:0]             size,
      input [C_ADDR_WIDTH-1:0] addr
    );
    integer i;
    begin
      if (size == 32'b0) begin  // null range
        decode_address = 1'b0;
      end else begin
        decode_address = 1'b1;
        for (i = size; i < C_ADDR_WIDTH; i = i + 1) begin
          decode_address = decode_address & ~(addr[i] ^ base[i]);
        end
      end
    end
  endfunction
  
  // Translate one-hot to binary encoded
  function [C_NUM_RANGES_LOG-1:0] f_hot2enc
    (
      input [C_NUM_RANGES-1:0]  one_hot
    );
    integer i;
    integer j;
    begin
      for (i=0; i<C_NUM_RANGES_LOG; i=i+1) begin
        f_hot2enc[i] = 1'b0;
        for (j=0; j<C_NUM_RANGES; j=j+1) begin
          f_hot2enc[i] = f_hot2enc[i] | (j[i] & one_hot[j]);
        end
      end
    end
  endfunction

  wire [C_NUM_RANGES-1:0]               range_hot;        // Range matching address (1-hot).

  generate
  
    for (rng = 0; rng < C_NUM_RANGES; rng = rng + 1) begin : gen_rng
      assign range_hot[rng] = C_RANGE_QUAL[rng] ? 
        decode_address(C_BASE_ADDR[rng*64 +: C_ADDR_WIDTH], C_RANGE_SIZE[rng*32 +: 32], addr)
        : 1'b0;
    end
  
    assign match = |range_hot;
    assign range_enc = f_hot2enc(range_hot);
    
  endgenerate
  
endmodule
