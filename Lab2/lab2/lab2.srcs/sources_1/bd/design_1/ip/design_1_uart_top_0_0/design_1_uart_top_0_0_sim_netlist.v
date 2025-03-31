// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Mar 21 23:41:55 2025
// Host        : Arnaud-Hugo-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/hugof/Documents/KU Leuven/FIIW/BAC3/Complex Digital
//               Design/Lab2/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.v}
// Design      : design_1_uart_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_top_0_0,uart_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_top,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_uart_top_0_0
   (iClk,
    iRst,
    iRx,
    oTx);
  input iClk;
  input iRst;
  input iRx;
  output oTx;

  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;

  design_1_uart_top_0_0_uart_top inst
       (.iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .oTx(oTx));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module design_1_uart_top_0_0_uart_rx
   (D,
    E,
    \FSM_onehot_rFSM_reg[4] ,
    \FSM_sequential_rCurrentState_reg[0]_0 ,
    \FSM_onehot_rFSM_reg[1] ,
    iRst,
    iRx,
    iClk,
    Q,
    \FSM_onehot_rFSM_reg[0] ,
    \rCnt_reg[4] ,
    \rCnt_reg[0] ,
    \rCnt_reg[4]_0 ,
    \FSM_onehot_rFSM_reg[0]_0 );
  output [4:0]D;
  output [0:0]E;
  output [0:0]\FSM_onehot_rFSM_reg[4] ;
  output \FSM_sequential_rCurrentState_reg[0]_0 ;
  output [7:0]\FSM_onehot_rFSM_reg[1] ;
  input iRst;
  input iRx;
  input iClk;
  input [4:0]Q;
  input [4:0]\FSM_onehot_rFSM_reg[0] ;
  input \rCnt_reg[4] ;
  input \rCnt_reg[0] ;
  input \rCnt_reg[4]_0 ;
  input \FSM_onehot_rFSM_reg[0]_0 ;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rFSM[4]_i_4_n_0 ;
  wire [4:0]\FSM_onehot_rFSM_reg[0] ;
  wire \FSM_onehot_rFSM_reg[0]_0 ;
  wire [7:0]\FSM_onehot_rFSM_reg[1] ;
  wire [0:0]\FSM_onehot_rFSM_reg[4] ;
  wire \FSM_sequential_rCurrentState[0]_i_2_n_0 ;
  wire \FSM_sequential_rCurrentState[2]_i_2_n_0 ;
  wire \FSM_sequential_rCurrentState[2]_i_3_n_0 ;
  wire \FSM_sequential_rCurrentState_reg[0]_0 ;
  wire [4:0]Q;
  wire iClk;
  wire iRst;
  wire iRx;
  wire [2:0]rBitCurrent;
  wire \rBitCurrent[0]_i_1_n_0 ;
  wire \rBitCurrent[0]_i_2_n_0 ;
  wire \rBitCurrent[1]_i_1_n_0 ;
  wire \rBitCurrent[2]_i_1_n_0 ;
  wire \rBitCurrent[2]_i_2_n_0 ;
  wire [10:0]rCntCurrent;
  wire \rCntCurrent[10]_i_2_n_0 ;
  wire \rCntCurrent[10]_i_3_n_0 ;
  wire \rCntCurrent[10]_i_4_n_0 ;
  wire \rCntCurrent[4]_i_2_n_0 ;
  wire \rCntCurrent[5]_i_2_n_0 ;
  wire \rCntCurrent[8]_i_2_n_0 ;
  wire \rCntCurrent[9]_i_2_n_0 ;
  wire \rCnt[4]_i_5_n_0 ;
  wire \rCnt_reg[0] ;
  wire \rCnt_reg[4] ;
  wire \rCnt_reg[4]_0 ;
  wire [2:0]rCurrentState;
  wire rRx1;
  wire rRx2;
  wire [7:0]rRxByte;
  wire \rRxByte[7]_i_3_n_0 ;
  wire \rRxByte[7]_i_4_n_0 ;
  wire \rRxByte[7]_i_5_n_0 ;
  wire [10:0]wCntNext;
  wire [2:0]wNextState;
  wire wRxByte;
  wire [7:0]wRxByte0_in;
  wire wRxDone;

  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \FSM_onehot_rFSM[4]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[0] [1]),
        .I1(\FSM_onehot_rFSM_reg[0]_0 ),
        .I2(\FSM_onehot_rFSM_reg[0] [0]),
        .I3(\FSM_onehot_rFSM_reg[0] [4]),
        .I4(\FSM_onehot_rFSM[4]_i_4_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFEFEEEEEEEE)) 
    \FSM_onehot_rFSM[4]_i_4 
       (.I0(\FSM_onehot_rFSM_reg[0] [2]),
        .I1(\FSM_onehot_rFSM_reg[0] [3]),
        .I2(rCurrentState[2]),
        .I3(rCurrentState[1]),
        .I4(rCurrentState[0]),
        .I5(\FSM_onehot_rFSM_reg[0] [1]),
        .O(\FSM_onehot_rFSM[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000898988DD)) 
    \FSM_sequential_rCurrentState[0]_i_1 
       (.I0(rCurrentState[0]),
        .I1(\FSM_sequential_rCurrentState[2]_i_2_n_0 ),
        .I2(\FSM_sequential_rCurrentState[0]_i_2_n_0 ),
        .I3(rRx2),
        .I4(rCurrentState[1]),
        .I5(rCurrentState[2]),
        .O(wNextState[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_rCurrentState[0]_i_2 
       (.I0(rBitCurrent[0]),
        .I1(rBitCurrent[1]),
        .I2(rBitCurrent[2]),
        .O(\FSM_sequential_rCurrentState[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h009A)) 
    \FSM_sequential_rCurrentState[1]_i_1 
       (.I0(rCurrentState[1]),
        .I1(\FSM_sequential_rCurrentState[2]_i_2_n_0 ),
        .I2(rCurrentState[0]),
        .I3(rCurrentState[2]),
        .O(wNextState[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_rCurrentState[2]_i_1 
       (.I0(rCurrentState[2]),
        .I1(rCurrentState[1]),
        .I2(rCurrentState[0]),
        .I3(\FSM_sequential_rCurrentState[2]_i_2_n_0 ),
        .O(wNextState[2]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \FSM_sequential_rCurrentState[2]_i_2 
       (.I0(\FSM_sequential_rCurrentState[2]_i_3_n_0 ),
        .I1(rCntCurrent[7]),
        .I2(rCntCurrent[6]),
        .I3(rCntCurrent[9]),
        .I4(rCntCurrent[8]),
        .I5(rCntCurrent[10]),
        .O(\FSM_sequential_rCurrentState[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_rCurrentState[2]_i_3 
       (.I0(rCntCurrent[3]),
        .I1(rCntCurrent[2]),
        .I2(rCntCurrent[5]),
        .I3(rCntCurrent[4]),
        .O(\FSM_sequential_rCurrentState[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:000,sSTART:001,sREAD:010,sDONE:100,sSTOP:011" *) 
  FDRE \FSM_sequential_rCurrentState_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(wNextState[0]),
        .Q(rCurrentState[0]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:000,sSTART:001,sREAD:010,sDONE:100,sSTOP:011" *) 
  FDRE \FSM_sequential_rCurrentState_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(wNextState[1]),
        .Q(rCurrentState[1]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:000,sSTART:001,sREAD:010,sDONE:100,sSTOP:011" *) 
  FDRE \FSM_sequential_rCurrentState_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(wNextState[2]),
        .Q(rCurrentState[2]),
        .R(iRst));
  LUT6 #(
    .INIT(64'hFCFC3C0000000111)) 
    \rBitCurrent[0]_i_1 
       (.I0(\rBitCurrent[0]_i_2_n_0 ),
        .I1(rCurrentState[0]),
        .I2(rCurrentState[1]),
        .I3(\FSM_sequential_rCurrentState[2]_i_2_n_0 ),
        .I4(rCurrentState[2]),
        .I5(rBitCurrent[0]),
        .O(\rBitCurrent[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \rBitCurrent[0]_i_2 
       (.I0(rBitCurrent[2]),
        .I1(rBitCurrent[1]),
        .I2(rBitCurrent[0]),
        .I3(rCurrentState[1]),
        .O(\rBitCurrent[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0C0C0A1B08080)) 
    \rBitCurrent[1]_i_1 
       (.I0(rCurrentState[2]),
        .I1(rCurrentState[0]),
        .I2(rBitCurrent[1]),
        .I3(rBitCurrent[0]),
        .I4(rCurrentState[1]),
        .I5(\FSM_sequential_rCurrentState[2]_i_2_n_0 ),
        .O(\rBitCurrent[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFC3C2000000010)) 
    \rBitCurrent[2]_i_1 
       (.I0(\rBitCurrent[2]_i_2_n_0 ),
        .I1(rCurrentState[0]),
        .I2(rCurrentState[1]),
        .I3(\FSM_sequential_rCurrentState[2]_i_2_n_0 ),
        .I4(rCurrentState[2]),
        .I5(rBitCurrent[2]),
        .O(\rBitCurrent[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rBitCurrent[2]_i_2 
       (.I0(rBitCurrent[1]),
        .I1(rBitCurrent[0]),
        .O(\rBitCurrent[2]_i_2_n_0 ));
  FDRE \rBitCurrent_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBitCurrent[0]_i_1_n_0 ),
        .Q(rBitCurrent[0]),
        .R(iRst));
  FDRE \rBitCurrent_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBitCurrent[1]_i_1_n_0 ),
        .Q(rBitCurrent[1]),
        .R(iRst));
  FDRE \rBitCurrent_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBitCurrent[2]_i_1_n_0 ),
        .Q(rBitCurrent[2]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[0]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[0] [1]),
        .I1(rRxByte[0]),
        .O(\FSM_onehot_rFSM_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[1]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[0] [1]),
        .I1(rRxByte[1]),
        .O(\FSM_onehot_rFSM_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[2]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[0] [1]),
        .I1(rRxByte[2]),
        .O(\FSM_onehot_rFSM_reg[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[3]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[0] [1]),
        .I1(rRxByte[3]),
        .O(\FSM_onehot_rFSM_reg[1] [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[4]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[0] [1]),
        .I1(rRxByte[4]),
        .O(\FSM_onehot_rFSM_reg[1] [4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[5]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[0] [1]),
        .I1(rRxByte[5]),
        .O(\FSM_onehot_rFSM_reg[1] [5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[6]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[0] [1]),
        .I1(rRxByte[6]),
        .O(\FSM_onehot_rFSM_reg[1] [6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rBuffer[7]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[0] [1]),
        .I1(rRxByte[7]),
        .O(\FSM_onehot_rFSM_reg[1] [7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rBuffer[95]_i_4 
       (.I0(rCurrentState[0]),
        .I1(rCurrentState[1]),
        .I2(rCurrentState[2]),
        .I3(\FSM_onehot_rFSM_reg[0] [1]),
        .O(\FSM_sequential_rCurrentState_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rCntCurrent[0]_i_1 
       (.I0(rCurrentState[2]),
        .I1(rCntCurrent[0]),
        .I2(\rCntCurrent[10]_i_2_n_0 ),
        .O(wCntNext[0]));
  LUT5 #(
    .INIT(32'h01111000)) 
    \rCntCurrent[10]_i_1 
       (.I0(rCurrentState[2]),
        .I1(\rCntCurrent[10]_i_2_n_0 ),
        .I2(\rCntCurrent[10]_i_3_n_0 ),
        .I3(rCntCurrent[9]),
        .I4(rCntCurrent[10]),
        .O(wCntNext[10]));
  LUT5 #(
    .INIT(32'hF1F111F1)) 
    \rCntCurrent[10]_i_2 
       (.I0(rCurrentState[1]),
        .I1(rCurrentState[0]),
        .I2(rCntCurrent[10]),
        .I3(\rCntCurrent[10]_i_4_n_0 ),
        .I4(\FSM_sequential_rCurrentState[2]_i_3_n_0 ),
        .O(\rCntCurrent[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rCntCurrent[10]_i_3 
       (.I0(rCntCurrent[8]),
        .I1(rCntCurrent[6]),
        .I2(\rCntCurrent[8]_i_2_n_0 ),
        .I3(rCntCurrent[7]),
        .O(\rCntCurrent[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rCntCurrent[10]_i_4 
       (.I0(rCntCurrent[7]),
        .I1(rCntCurrent[6]),
        .I2(rCntCurrent[9]),
        .I3(rCntCurrent[8]),
        .O(\rCntCurrent[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \rCntCurrent[1]_i_1 
       (.I0(rCurrentState[2]),
        .I1(\rCntCurrent[10]_i_2_n_0 ),
        .I2(rCntCurrent[1]),
        .I3(rCntCurrent[0]),
        .O(wCntNext[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \rCntCurrent[2]_i_1 
       (.I0(rCurrentState[2]),
        .I1(\rCntCurrent[10]_i_2_n_0 ),
        .I2(rCntCurrent[0]),
        .I3(rCntCurrent[1]),
        .I4(rCntCurrent[2]),
        .O(wCntNext[2]));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \rCntCurrent[3]_i_1 
       (.I0(rCurrentState[2]),
        .I1(\rCntCurrent[10]_i_2_n_0 ),
        .I2(rCntCurrent[1]),
        .I3(rCntCurrent[0]),
        .I4(rCntCurrent[2]),
        .I5(rCntCurrent[3]),
        .O(wCntNext[3]));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \rCntCurrent[4]_i_1 
       (.I0(rCurrentState[2]),
        .I1(\rCntCurrent[10]_i_2_n_0 ),
        .I2(rCntCurrent[2]),
        .I3(\rCntCurrent[4]_i_2_n_0 ),
        .I4(rCntCurrent[3]),
        .I5(rCntCurrent[4]),
        .O(wCntNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rCntCurrent[4]_i_2 
       (.I0(rCntCurrent[1]),
        .I1(rCntCurrent[0]),
        .O(\rCntCurrent[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \rCntCurrent[5]_i_1 
       (.I0(rCurrentState[2]),
        .I1(\rCntCurrent[10]_i_2_n_0 ),
        .I2(\rCntCurrent[5]_i_2_n_0 ),
        .I3(rCntCurrent[5]),
        .O(wCntNext[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rCntCurrent[5]_i_2 
       (.I0(rCntCurrent[4]),
        .I1(rCntCurrent[2]),
        .I2(rCntCurrent[0]),
        .I3(rCntCurrent[1]),
        .I4(rCntCurrent[3]),
        .O(\rCntCurrent[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \rCntCurrent[6]_i_1 
       (.I0(rCurrentState[2]),
        .I1(\rCntCurrent[10]_i_2_n_0 ),
        .I2(\rCntCurrent[8]_i_2_n_0 ),
        .I3(rCntCurrent[6]),
        .O(wCntNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \rCntCurrent[7]_i_1 
       (.I0(rCurrentState[2]),
        .I1(\rCntCurrent[10]_i_2_n_0 ),
        .I2(\rCntCurrent[8]_i_2_n_0 ),
        .I3(rCntCurrent[6]),
        .I4(rCntCurrent[7]),
        .O(wCntNext[7]));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \rCntCurrent[8]_i_1 
       (.I0(rCurrentState[2]),
        .I1(\rCntCurrent[10]_i_2_n_0 ),
        .I2(rCntCurrent[6]),
        .I3(\rCntCurrent[8]_i_2_n_0 ),
        .I4(rCntCurrent[7]),
        .I5(rCntCurrent[8]),
        .O(wCntNext[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rCntCurrent[8]_i_2 
       (.I0(rCntCurrent[5]),
        .I1(rCntCurrent[3]),
        .I2(rCntCurrent[1]),
        .I3(rCntCurrent[0]),
        .I4(rCntCurrent[2]),
        .I5(rCntCurrent[4]),
        .O(\rCntCurrent[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \rCntCurrent[9]_i_1 
       (.I0(rCurrentState[2]),
        .I1(\rCntCurrent[10]_i_2_n_0 ),
        .I2(rCntCurrent[7]),
        .I3(\rCntCurrent[9]_i_2_n_0 ),
        .I4(rCntCurrent[8]),
        .I5(rCntCurrent[9]),
        .O(wCntNext[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rCntCurrent[9]_i_2 
       (.I0(rCntCurrent[6]),
        .I1(rCntCurrent[4]),
        .I2(rCntCurrent[2]),
        .I3(\rCntCurrent[4]_i_2_n_0 ),
        .I4(rCntCurrent[3]),
        .I5(rCntCurrent[5]),
        .O(\rCntCurrent[9]_i_2_n_0 ));
  FDRE \rCntCurrent_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[0]),
        .Q(rCntCurrent[0]),
        .R(iRst));
  FDRE \rCntCurrent_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[10]),
        .Q(rCntCurrent[10]),
        .R(iRst));
  FDRE \rCntCurrent_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[1]),
        .Q(rCntCurrent[1]),
        .R(iRst));
  FDRE \rCntCurrent_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[2]),
        .Q(rCntCurrent[2]),
        .R(iRst));
  FDRE \rCntCurrent_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[3]),
        .Q(rCntCurrent[3]),
        .R(iRst));
  FDRE \rCntCurrent_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[4]),
        .Q(rCntCurrent[4]),
        .R(iRst));
  FDRE \rCntCurrent_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[5]),
        .Q(rCntCurrent[5]),
        .R(iRst));
  FDRE \rCntCurrent_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[6]),
        .Q(rCntCurrent[6]),
        .R(iRst));
  FDRE \rCntCurrent_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[7]),
        .Q(rCntCurrent[7]),
        .R(iRst));
  FDRE \rCntCurrent_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[8]),
        .Q(rCntCurrent[8]),
        .R(iRst));
  FDRE \rCntCurrent_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCntNext[9]),
        .Q(rCntCurrent[9]),
        .R(iRst));
  LUT3 #(
    .INIT(8'hF4)) 
    \rCnt[0]_i_1 
       (.I0(Q[0]),
        .I1(\rCnt[4]_i_5_n_0 ),
        .I2(\FSM_onehot_rFSM_reg[0] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF60)) 
    \rCnt[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\rCnt[4]_i_5_n_0 ),
        .I3(\FSM_onehot_rFSM_reg[0] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF7800)) 
    \rCnt[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\rCnt[4]_i_5_n_0 ),
        .I4(\FSM_onehot_rFSM_reg[0] [0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F800000)) 
    \rCnt[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\rCnt[4]_i_5_n_0 ),
        .I5(\FSM_onehot_rFSM_reg[0] [0]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFCFDFDFCFCFCFC)) 
    \rCnt[4]_i_1 
       (.I0(\rCnt_reg[0] ),
        .I1(\FSM_onehot_rFSM_reg[0] [4]),
        .I2(\FSM_onehot_rFSM_reg[0] [2]),
        .I3(\FSM_onehot_rFSM_reg[0]_0 ),
        .I4(wRxDone),
        .I5(\FSM_onehot_rFSM_reg[0] [1]),
        .O(\FSM_onehot_rFSM_reg[4] ));
  LUT5 #(
    .INIT(32'hFFFF7800)) 
    \rCnt[4]_i_2 
       (.I0(\rCnt_reg[4] ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\rCnt[4]_i_5_n_0 ),
        .I4(\FSM_onehot_rFSM_reg[0] [0]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rCnt[4]_i_3 
       (.I0(rCurrentState[2]),
        .I1(rCurrentState[1]),
        .I2(rCurrentState[0]),
        .O(wRxDone));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \rCnt[4]_i_5 
       (.I0(\rCnt_reg[0] ),
        .I1(rCurrentState[0]),
        .I2(rCurrentState[1]),
        .I3(rCurrentState[2]),
        .I4(\FSM_onehot_rFSM_reg[0] [1]),
        .I5(\rCnt_reg[4]_0 ),
        .O(\rCnt[4]_i_5_n_0 ));
  FDSE rRx1_reg
       (.C(iClk),
        .CE(1'b1),
        .D(iRx),
        .Q(rRx1),
        .S(iRst));
  FDSE rRx2_reg
       (.C(iClk),
        .CE(1'b1),
        .D(rRx1),
        .Q(rRx2),
        .S(iRst));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rRxByte[0]_i_1 
       (.I0(rCurrentState[1]),
        .I1(rRxByte[1]),
        .O(wRxByte0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rRxByte[1]_i_1 
       (.I0(rCurrentState[1]),
        .I1(rRxByte[2]),
        .O(wRxByte0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rRxByte[2]_i_1 
       (.I0(rCurrentState[1]),
        .I1(rRxByte[3]),
        .O(wRxByte0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rRxByte[3]_i_1 
       (.I0(rCurrentState[1]),
        .I1(rRxByte[4]),
        .O(wRxByte0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rRxByte[4]_i_1 
       (.I0(rCurrentState[1]),
        .I1(rRxByte[5]),
        .O(wRxByte0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rRxByte[5]_i_1 
       (.I0(rCurrentState[1]),
        .I1(rRxByte[6]),
        .O(wRxByte0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rRxByte[6]_i_1 
       (.I0(rCurrentState[1]),
        .I1(rRxByte[7]),
        .O(wRxByte0_in[6]));
  LUT5 #(
    .INIT(32'h10150015)) 
    \rRxByte[7]_i_1 
       (.I0(rCurrentState[2]),
        .I1(rCurrentState[0]),
        .I2(\FSM_sequential_rCurrentState[2]_i_2_n_0 ),
        .I3(rCurrentState[1]),
        .I4(\rRxByte[7]_i_3_n_0 ),
        .O(wRxByte));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rRxByte[7]_i_2 
       (.I0(rCurrentState[1]),
        .I1(rRx2),
        .O(wRxByte0_in[7]));
  LUT5 #(
    .INIT(32'h31000000)) 
    \rRxByte[7]_i_3 
       (.I0(rCntCurrent[6]),
        .I1(rCntCurrent[8]),
        .I2(rCntCurrent[7]),
        .I3(\rRxByte[7]_i_4_n_0 ),
        .I4(\rRxByte[7]_i_5_n_0 ),
        .O(\rRxByte[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \rRxByte[7]_i_4 
       (.I0(rCntCurrent[3]),
        .I1(rCntCurrent[4]),
        .I2(rCntCurrent[5]),
        .I3(rCntCurrent[1]),
        .I4(rCntCurrent[2]),
        .O(\rRxByte[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000100010)) 
    \rRxByte[7]_i_5 
       (.I0(rCntCurrent[7]),
        .I1(rCntCurrent[8]),
        .I2(rCntCurrent[9]),
        .I3(rCntCurrent[10]),
        .I4(rCntCurrent[0]),
        .I5(rCntCurrent[1]),
        .O(\rRxByte[7]_i_5_n_0 ));
  FDRE \rRxByte_reg[0] 
       (.C(iClk),
        .CE(wRxByte),
        .D(wRxByte0_in[0]),
        .Q(rRxByte[0]),
        .R(iRst));
  FDRE \rRxByte_reg[1] 
       (.C(iClk),
        .CE(wRxByte),
        .D(wRxByte0_in[1]),
        .Q(rRxByte[1]),
        .R(iRst));
  FDRE \rRxByte_reg[2] 
       (.C(iClk),
        .CE(wRxByte),
        .D(wRxByte0_in[2]),
        .Q(rRxByte[2]),
        .R(iRst));
  FDRE \rRxByte_reg[3] 
       (.C(iClk),
        .CE(wRxByte),
        .D(wRxByte0_in[3]),
        .Q(rRxByte[3]),
        .R(iRst));
  FDRE \rRxByte_reg[4] 
       (.C(iClk),
        .CE(wRxByte),
        .D(wRxByte0_in[4]),
        .Q(rRxByte[4]),
        .R(iRst));
  FDRE \rRxByte_reg[5] 
       (.C(iClk),
        .CE(wRxByte),
        .D(wRxByte0_in[5]),
        .Q(rRxByte[5]),
        .R(iRst));
  FDRE \rRxByte_reg[6] 
       (.C(iClk),
        .CE(wRxByte),
        .D(wRxByte0_in[6]),
        .Q(rRxByte[6]),
        .R(iRst));
  FDRE \rRxByte_reg[7] 
       (.C(iClk),
        .CE(wRxByte),
        .D(wRxByte0_in[7]),
        .Q(rRxByte[7]),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_top" *) 
module design_1_uart_top_0_0_uart_top
   (oTx,
    iRst,
    iClk,
    iRx);
  output oTx;
  input iRst;
  input iClk;
  input iRx;

  wire \FSM_onehot_rFSM[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM[2]_i_2_n_0 ;
  wire \FSM_onehot_rFSM[4]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_reg_n_0_[3] ;
  wire \FSM_onehot_rFSM_reg_n_0_[4] ;
  wire UART_RX_INST_n_0;
  wire UART_RX_INST_n_1;
  wire UART_RX_INST_n_10;
  wire UART_RX_INST_n_11;
  wire UART_RX_INST_n_12;
  wire UART_RX_INST_n_13;
  wire UART_RX_INST_n_14;
  wire UART_RX_INST_n_15;
  wire UART_RX_INST_n_2;
  wire UART_RX_INST_n_3;
  wire UART_RX_INST_n_4;
  wire UART_RX_INST_n_5;
  wire UART_RX_INST_n_7;
  wire UART_RX_INST_n_8;
  wire UART_RX_INST_n_9;
  wire UART_TX_INST_n_10;
  wire UART_TX_INST_n_12;
  wire UART_TX_INST_n_14;
  wire UART_TX_INST_n_8;
  wire UART_TX_INST_n_9;
  wire iClk;
  wire iRst;
  wire iRx;
  wire [95:8]in8;
  wire oTx;
  wire [7:0]p_0_in;
  wire rBuffer;
  wire \rBuffer[10]_i_1_n_0 ;
  wire \rBuffer[11]_i_1_n_0 ;
  wire \rBuffer[12]_i_1_n_0 ;
  wire \rBuffer[13]_i_1_n_0 ;
  wire \rBuffer[14]_i_1_n_0 ;
  wire \rBuffer[15]_i_1_n_0 ;
  wire \rBuffer[16]_i_1_n_0 ;
  wire \rBuffer[17]_i_1_n_0 ;
  wire \rBuffer[18]_i_1_n_0 ;
  wire \rBuffer[19]_i_1_n_0 ;
  wire \rBuffer[20]_i_1_n_0 ;
  wire \rBuffer[21]_i_1_n_0 ;
  wire \rBuffer[22]_i_1_n_0 ;
  wire \rBuffer[23]_i_1_n_0 ;
  wire \rBuffer[24]_i_1_n_0 ;
  wire \rBuffer[25]_i_1_n_0 ;
  wire \rBuffer[26]_i_1_n_0 ;
  wire \rBuffer[27]_i_1_n_0 ;
  wire \rBuffer[28]_i_1_n_0 ;
  wire \rBuffer[29]_i_1_n_0 ;
  wire \rBuffer[30]_i_1_n_0 ;
  wire \rBuffer[31]_i_1_n_0 ;
  wire \rBuffer[32]_i_1_n_0 ;
  wire \rBuffer[33]_i_1_n_0 ;
  wire \rBuffer[34]_i_1_n_0 ;
  wire \rBuffer[35]_i_1_n_0 ;
  wire \rBuffer[36]_i_1_n_0 ;
  wire \rBuffer[37]_i_1_n_0 ;
  wire \rBuffer[38]_i_1_n_0 ;
  wire \rBuffer[39]_i_1_n_0 ;
  wire \rBuffer[40]_i_1_n_0 ;
  wire \rBuffer[41]_i_1_n_0 ;
  wire \rBuffer[42]_i_1_n_0 ;
  wire \rBuffer[43]_i_1_n_0 ;
  wire \rBuffer[44]_i_1_n_0 ;
  wire \rBuffer[45]_i_1_n_0 ;
  wire \rBuffer[46]_i_1_n_0 ;
  wire \rBuffer[47]_i_1_n_0 ;
  wire \rBuffer[48]_i_1_n_0 ;
  wire \rBuffer[49]_i_1_n_0 ;
  wire \rBuffer[50]_i_1_n_0 ;
  wire \rBuffer[51]_i_1_n_0 ;
  wire \rBuffer[52]_i_1_n_0 ;
  wire \rBuffer[53]_i_1_n_0 ;
  wire \rBuffer[54]_i_1_n_0 ;
  wire \rBuffer[55]_i_1_n_0 ;
  wire \rBuffer[56]_i_1_n_0 ;
  wire \rBuffer[57]_i_1_n_0 ;
  wire \rBuffer[58]_i_1_n_0 ;
  wire \rBuffer[59]_i_1_n_0 ;
  wire \rBuffer[60]_i_1_n_0 ;
  wire \rBuffer[61]_i_1_n_0 ;
  wire \rBuffer[62]_i_1_n_0 ;
  wire \rBuffer[63]_i_1_n_0 ;
  wire \rBuffer[64]_i_1_n_0 ;
  wire \rBuffer[65]_i_1_n_0 ;
  wire \rBuffer[66]_i_1_n_0 ;
  wire \rBuffer[67]_i_1_n_0 ;
  wire \rBuffer[68]_i_1_n_0 ;
  wire \rBuffer[69]_i_1_n_0 ;
  wire \rBuffer[70]_i_1_n_0 ;
  wire \rBuffer[71]_i_1_n_0 ;
  wire \rBuffer[72]_i_1_n_0 ;
  wire \rBuffer[73]_i_1_n_0 ;
  wire \rBuffer[74]_i_1_n_0 ;
  wire \rBuffer[75]_i_1_n_0 ;
  wire \rBuffer[76]_i_1_n_0 ;
  wire \rBuffer[77]_i_1_n_0 ;
  wire \rBuffer[78]_i_1_n_0 ;
  wire \rBuffer[79]_i_1_n_0 ;
  wire \rBuffer[80]_i_1_n_0 ;
  wire \rBuffer[81]_i_1_n_0 ;
  wire \rBuffer[82]_i_1_n_0 ;
  wire \rBuffer[83]_i_1_n_0 ;
  wire \rBuffer[84]_i_1_n_0 ;
  wire \rBuffer[85]_i_1_n_0 ;
  wire \rBuffer[86]_i_1_n_0 ;
  wire \rBuffer[87]_i_1_n_0 ;
  wire \rBuffer[88]_i_1_n_0 ;
  wire \rBuffer[89]_i_1_n_0 ;
  wire \rBuffer[8]_i_1_n_0 ;
  wire \rBuffer[90]_i_1_n_0 ;
  wire \rBuffer[91]_i_1_n_0 ;
  wire \rBuffer[92]_i_1_n_0 ;
  wire \rBuffer[93]_i_1_n_0 ;
  wire \rBuffer[94]_i_1_n_0 ;
  wire \rBuffer[95]_i_2_n_0 ;
  wire \rBuffer[9]_i_1_n_0 ;
  wire \rBuffer_reg_n_0_[88] ;
  wire \rBuffer_reg_n_0_[89] ;
  wire \rBuffer_reg_n_0_[90] ;
  wire \rBuffer_reg_n_0_[91] ;
  wire \rBuffer_reg_n_0_[92] ;
  wire \rBuffer_reg_n_0_[93] ;
  wire \rBuffer_reg_n_0_[94] ;
  wire \rBuffer_reg_n_0_[95] ;
  wire rCnt;
  wire \rCnt[4]_i_4_n_0 ;
  wire \rCnt_reg_n_0_[0] ;
  wire \rCnt_reg_n_0_[1] ;
  wire \rCnt_reg_n_0_[2] ;
  wire \rCnt_reg_n_0_[3] ;
  wire \rCnt_reg_n_0_[4] ;
  wire [7:0]rTxByte;
  wire rTxByte_0;
  wire rTxStart_reg_n_0;

  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_rFSM[1]_i_1 
       (.I0(\FSM_onehot_rFSM[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_onehot_rFSM[2]_i_2 
       (.I0(\rCnt_reg_n_0_[2] ),
        .I1(\rCnt_reg_n_0_[3] ),
        .I2(\rCnt_reg_n_0_[4] ),
        .I3(\rCnt_reg_n_0_[0] ),
        .I4(\rCnt_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h010F0F0F)) 
    \FSM_onehot_rFSM[4]_i_3 
       (.I0(\rCnt_reg_n_0_[0] ),
        .I1(\rCnt_reg_n_0_[1] ),
        .I2(\rCnt_reg_n_0_[4] ),
        .I3(\rCnt_reg_n_0_[2] ),
        .I4(\rCnt_reg_n_0_[3] ),
        .O(\FSM_onehot_rFSM[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_reg[0] 
       (.C(iClk),
        .CE(UART_RX_INST_n_5),
        .D(\FSM_onehot_rFSM_reg_n_0_[4] ),
        .Q(\FSM_onehot_rFSM_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[1] 
       (.C(iClk),
        .CE(UART_RX_INST_n_5),
        .D(\FSM_onehot_rFSM[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[2] 
       (.C(iClk),
        .CE(UART_RX_INST_n_5),
        .D(UART_TX_INST_n_10),
        .Q(rTxByte_0),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[3] 
       (.C(iClk),
        .CE(UART_RX_INST_n_5),
        .D(UART_TX_INST_n_9),
        .Q(\FSM_onehot_rFSM_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:00001,s_WAIT_RX:00010,s_DONE:10000,s_WAIT_TX:01000,s_TX:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[4] 
       (.C(iClk),
        .CE(UART_RX_INST_n_5),
        .D(UART_TX_INST_n_8),
        .Q(\FSM_onehot_rFSM_reg_n_0_[4] ),
        .R(iRst));
  design_1_uart_top_0_0_uart_rx UART_RX_INST
       (.D({UART_RX_INST_n_0,UART_RX_INST_n_1,UART_RX_INST_n_2,UART_RX_INST_n_3,UART_RX_INST_n_4}),
        .E(UART_RX_INST_n_5),
        .\FSM_onehot_rFSM_reg[0] ({\FSM_onehot_rFSM_reg_n_0_[4] ,\FSM_onehot_rFSM_reg_n_0_[3] ,rTxByte_0,\FSM_onehot_rFSM_reg_n_0_[1] ,\FSM_onehot_rFSM_reg_n_0_[0] }),
        .\FSM_onehot_rFSM_reg[0]_0 (\FSM_onehot_rFSM[4]_i_3_n_0 ),
        .\FSM_onehot_rFSM_reg[1] ({UART_RX_INST_n_8,UART_RX_INST_n_9,UART_RX_INST_n_10,UART_RX_INST_n_11,UART_RX_INST_n_12,UART_RX_INST_n_13,UART_RX_INST_n_14,UART_RX_INST_n_15}),
        .\FSM_onehot_rFSM_reg[4] (rCnt),
        .\FSM_sequential_rCurrentState_reg[0]_0 (UART_RX_INST_n_7),
        .Q({\rCnt_reg_n_0_[4] ,\rCnt_reg_n_0_[3] ,\rCnt_reg_n_0_[2] ,\rCnt_reg_n_0_[1] ,\rCnt_reg_n_0_[0] }),
        .iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .\rCnt_reg[0] (\FSM_onehot_rFSM[2]_i_2_n_0 ),
        .\rCnt_reg[4] (\rCnt[4]_i_4_n_0 ),
        .\rCnt_reg[4]_0 (UART_TX_INST_n_12));
  design_1_uart_top_0_0_uart_tx UART_TX_INST
       (.D(p_0_in),
        .E(rBuffer),
        .\FSM_onehot_rFSM_Current_reg[4]_0 (UART_TX_INST_n_14),
        .\FSM_onehot_rFSM_reg[2] ({UART_TX_INST_n_8,UART_TX_INST_n_9,UART_TX_INST_n_10}),
        .\FSM_onehot_rFSM_reg[2]_0 (UART_TX_INST_n_12),
        .\FSM_onehot_rFSM_reg[2]_1 (\FSM_onehot_rFSM[2]_i_2_n_0 ),
        .Q({\rCnt_reg_n_0_[4] ,\rCnt_reg_n_0_[3] ,\rCnt_reg_n_0_[2] }),
        .iClk(iClk),
        .iRst(iRst),
        .oTx(oTx),
        .\rBuffer_reg[0] ({\FSM_onehot_rFSM_reg_n_0_[4] ,\FSM_onehot_rFSM_reg_n_0_[3] ,rTxByte_0,\FSM_onehot_rFSM_reg_n_0_[1] }),
        .\rBuffer_reg[0]_0 (UART_RX_INST_n_7),
        .\rTxByte_reg[7] ({\rBuffer_reg_n_0_[95] ,\rBuffer_reg_n_0_[94] ,\rBuffer_reg_n_0_[93] ,\rBuffer_reg_n_0_[92] ,\rBuffer_reg_n_0_[91] ,\rBuffer_reg_n_0_[90] ,\rBuffer_reg_n_0_[89] ,\rBuffer_reg_n_0_[88] }),
        .\rTxData_Current_reg[7]_0 (rTxByte),
        .rTxStart_reg(rTxStart_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[10]_i_1 
       (.I0(in8[10]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[11]_i_1 
       (.I0(in8[11]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[12]_i_1 
       (.I0(in8[12]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[13]_i_1 
       (.I0(in8[13]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[14]_i_1 
       (.I0(in8[14]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[15]_i_1 
       (.I0(in8[15]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[16]_i_1 
       (.I0(in8[16]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[17]_i_1 
       (.I0(in8[17]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[18]_i_1 
       (.I0(in8[18]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[19]_i_1 
       (.I0(in8[19]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[20]_i_1 
       (.I0(in8[20]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[21]_i_1 
       (.I0(in8[21]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[22]_i_1 
       (.I0(in8[22]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[23]_i_1 
       (.I0(in8[23]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[24]_i_1 
       (.I0(in8[24]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[25]_i_1 
       (.I0(in8[25]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[26]_i_1 
       (.I0(in8[26]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[27]_i_1 
       (.I0(in8[27]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[28]_i_1 
       (.I0(in8[28]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[29]_i_1 
       (.I0(in8[29]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[30]_i_1 
       (.I0(in8[30]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[31]_i_1 
       (.I0(in8[31]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[32]_i_1 
       (.I0(in8[32]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[33]_i_1 
       (.I0(in8[33]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[34]_i_1 
       (.I0(in8[34]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[35]_i_1 
       (.I0(in8[35]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[36]_i_1 
       (.I0(in8[36]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[37]_i_1 
       (.I0(in8[37]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[38]_i_1 
       (.I0(in8[38]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[39]_i_1 
       (.I0(in8[39]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[40]_i_1 
       (.I0(in8[40]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[41]_i_1 
       (.I0(in8[41]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[42]_i_1 
       (.I0(in8[42]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[43]_i_1 
       (.I0(in8[43]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[44]_i_1 
       (.I0(in8[44]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[45]_i_1 
       (.I0(in8[45]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[46]_i_1 
       (.I0(in8[46]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[47]_i_1 
       (.I0(in8[47]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[48]_i_1 
       (.I0(in8[48]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[49]_i_1 
       (.I0(in8[49]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[50]_i_1 
       (.I0(in8[50]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[51]_i_1 
       (.I0(in8[51]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[52]_i_1 
       (.I0(in8[52]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[53]_i_1 
       (.I0(in8[53]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[54]_i_1 
       (.I0(in8[54]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[55]_i_1 
       (.I0(in8[55]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[56]_i_1 
       (.I0(in8[56]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[57]_i_1 
       (.I0(in8[57]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[58]_i_1 
       (.I0(in8[58]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[59]_i_1 
       (.I0(in8[59]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[60]_i_1 
       (.I0(in8[60]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[61]_i_1 
       (.I0(in8[61]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[62]_i_1 
       (.I0(in8[62]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[63]_i_1 
       (.I0(in8[63]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[64]_i_1 
       (.I0(in8[64]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[65]_i_1 
       (.I0(in8[65]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[66]_i_1 
       (.I0(in8[66]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[67]_i_1 
       (.I0(in8[67]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[68]_i_1 
       (.I0(in8[68]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[69]_i_1 
       (.I0(in8[69]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[70]_i_1 
       (.I0(in8[70]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[71]_i_1 
       (.I0(in8[71]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[72]_i_1 
       (.I0(in8[72]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[73]_i_1 
       (.I0(in8[73]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[73]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[74]_i_1 
       (.I0(in8[74]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[75]_i_1 
       (.I0(in8[75]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[75]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[76]_i_1 
       (.I0(in8[76]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[77]_i_1 
       (.I0(in8[77]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[77]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[78]_i_1 
       (.I0(in8[78]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[79]_i_1 
       (.I0(in8[79]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[79]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[80]_i_1 
       (.I0(in8[80]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[80]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[81]_i_1 
       (.I0(in8[81]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[82]_i_1 
       (.I0(in8[82]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[82]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[83]_i_1 
       (.I0(in8[83]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[83]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[84]_i_1 
       (.I0(in8[84]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[84]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[85]_i_1 
       (.I0(in8[85]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[85]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[86]_i_1 
       (.I0(in8[86]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[86]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[87]_i_1 
       (.I0(in8[87]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[87]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[88]_i_1 
       (.I0(in8[88]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[89]_i_1 
       (.I0(in8[89]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[89]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[8]_i_1 
       (.I0(in8[8]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[90]_i_1 
       (.I0(in8[90]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[90]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[91]_i_1 
       (.I0(in8[91]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[91]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[92]_i_1 
       (.I0(in8[92]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[92]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[93]_i_1 
       (.I0(in8[93]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[93]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[94]_i_1 
       (.I0(in8[94]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[94]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[95]_i_2 
       (.I0(in8[95]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[95]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rBuffer[9]_i_1 
       (.I0(in8[9]),
        .I1(rTxByte_0),
        .I2(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .O(\rBuffer[9]_i_1_n_0 ));
  FDRE \rBuffer_reg[0] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_15),
        .Q(in8[8]),
        .R(iRst));
  FDRE \rBuffer_reg[10] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[10]_i_1_n_0 ),
        .Q(in8[18]),
        .R(iRst));
  FDRE \rBuffer_reg[11] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[11]_i_1_n_0 ),
        .Q(in8[19]),
        .R(iRst));
  FDRE \rBuffer_reg[12] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[12]_i_1_n_0 ),
        .Q(in8[20]),
        .R(iRst));
  FDRE \rBuffer_reg[13] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[13]_i_1_n_0 ),
        .Q(in8[21]),
        .R(iRst));
  FDRE \rBuffer_reg[14] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[14]_i_1_n_0 ),
        .Q(in8[22]),
        .R(iRst));
  FDRE \rBuffer_reg[15] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[15]_i_1_n_0 ),
        .Q(in8[23]),
        .R(iRst));
  FDRE \rBuffer_reg[16] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[16]_i_1_n_0 ),
        .Q(in8[24]),
        .R(iRst));
  FDRE \rBuffer_reg[17] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[17]_i_1_n_0 ),
        .Q(in8[25]),
        .R(iRst));
  FDRE \rBuffer_reg[18] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[18]_i_1_n_0 ),
        .Q(in8[26]),
        .R(iRst));
  FDRE \rBuffer_reg[19] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[19]_i_1_n_0 ),
        .Q(in8[27]),
        .R(iRst));
  FDRE \rBuffer_reg[1] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_14),
        .Q(in8[9]),
        .R(iRst));
  FDRE \rBuffer_reg[20] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[20]_i_1_n_0 ),
        .Q(in8[28]),
        .R(iRst));
  FDRE \rBuffer_reg[21] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[21]_i_1_n_0 ),
        .Q(in8[29]),
        .R(iRst));
  FDRE \rBuffer_reg[22] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[22]_i_1_n_0 ),
        .Q(in8[30]),
        .R(iRst));
  FDRE \rBuffer_reg[23] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[23]_i_1_n_0 ),
        .Q(in8[31]),
        .R(iRst));
  FDRE \rBuffer_reg[24] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[24]_i_1_n_0 ),
        .Q(in8[32]),
        .R(iRst));
  FDRE \rBuffer_reg[25] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[25]_i_1_n_0 ),
        .Q(in8[33]),
        .R(iRst));
  FDRE \rBuffer_reg[26] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[26]_i_1_n_0 ),
        .Q(in8[34]),
        .R(iRst));
  FDRE \rBuffer_reg[27] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[27]_i_1_n_0 ),
        .Q(in8[35]),
        .R(iRst));
  FDRE \rBuffer_reg[28] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[28]_i_1_n_0 ),
        .Q(in8[36]),
        .R(iRst));
  FDRE \rBuffer_reg[29] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[29]_i_1_n_0 ),
        .Q(in8[37]),
        .R(iRst));
  FDRE \rBuffer_reg[2] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_13),
        .Q(in8[10]),
        .R(iRst));
  FDRE \rBuffer_reg[30] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[30]_i_1_n_0 ),
        .Q(in8[38]),
        .R(iRst));
  FDRE \rBuffer_reg[31] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[31]_i_1_n_0 ),
        .Q(in8[39]),
        .R(iRst));
  FDRE \rBuffer_reg[32] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[32]_i_1_n_0 ),
        .Q(in8[40]),
        .R(iRst));
  FDRE \rBuffer_reg[33] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[33]_i_1_n_0 ),
        .Q(in8[41]),
        .R(iRst));
  FDRE \rBuffer_reg[34] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[34]_i_1_n_0 ),
        .Q(in8[42]),
        .R(iRst));
  FDRE \rBuffer_reg[35] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[35]_i_1_n_0 ),
        .Q(in8[43]),
        .R(iRst));
  FDRE \rBuffer_reg[36] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[36]_i_1_n_0 ),
        .Q(in8[44]),
        .R(iRst));
  FDRE \rBuffer_reg[37] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[37]_i_1_n_0 ),
        .Q(in8[45]),
        .R(iRst));
  FDRE \rBuffer_reg[38] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[38]_i_1_n_0 ),
        .Q(in8[46]),
        .R(iRst));
  FDRE \rBuffer_reg[39] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[39]_i_1_n_0 ),
        .Q(in8[47]),
        .R(iRst));
  FDRE \rBuffer_reg[3] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_12),
        .Q(in8[11]),
        .R(iRst));
  FDRE \rBuffer_reg[40] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[40]_i_1_n_0 ),
        .Q(in8[48]),
        .R(iRst));
  FDRE \rBuffer_reg[41] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[41]_i_1_n_0 ),
        .Q(in8[49]),
        .R(iRst));
  FDRE \rBuffer_reg[42] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[42]_i_1_n_0 ),
        .Q(in8[50]),
        .R(iRst));
  FDRE \rBuffer_reg[43] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[43]_i_1_n_0 ),
        .Q(in8[51]),
        .R(iRst));
  FDRE \rBuffer_reg[44] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[44]_i_1_n_0 ),
        .Q(in8[52]),
        .R(iRst));
  FDRE \rBuffer_reg[45] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[45]_i_1_n_0 ),
        .Q(in8[53]),
        .R(iRst));
  FDRE \rBuffer_reg[46] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[46]_i_1_n_0 ),
        .Q(in8[54]),
        .R(iRst));
  FDRE \rBuffer_reg[47] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[47]_i_1_n_0 ),
        .Q(in8[55]),
        .R(iRst));
  FDRE \rBuffer_reg[48] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[48]_i_1_n_0 ),
        .Q(in8[56]),
        .R(iRst));
  FDRE \rBuffer_reg[49] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[49]_i_1_n_0 ),
        .Q(in8[57]),
        .R(iRst));
  FDRE \rBuffer_reg[4] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_11),
        .Q(in8[12]),
        .R(iRst));
  FDRE \rBuffer_reg[50] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[50]_i_1_n_0 ),
        .Q(in8[58]),
        .R(iRst));
  FDRE \rBuffer_reg[51] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[51]_i_1_n_0 ),
        .Q(in8[59]),
        .R(iRst));
  FDRE \rBuffer_reg[52] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[52]_i_1_n_0 ),
        .Q(in8[60]),
        .R(iRst));
  FDRE \rBuffer_reg[53] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[53]_i_1_n_0 ),
        .Q(in8[61]),
        .R(iRst));
  FDRE \rBuffer_reg[54] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[54]_i_1_n_0 ),
        .Q(in8[62]),
        .R(iRst));
  FDRE \rBuffer_reg[55] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[55]_i_1_n_0 ),
        .Q(in8[63]),
        .R(iRst));
  FDRE \rBuffer_reg[56] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[56]_i_1_n_0 ),
        .Q(in8[64]),
        .R(iRst));
  FDRE \rBuffer_reg[57] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[57]_i_1_n_0 ),
        .Q(in8[65]),
        .R(iRst));
  FDRE \rBuffer_reg[58] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[58]_i_1_n_0 ),
        .Q(in8[66]),
        .R(iRst));
  FDRE \rBuffer_reg[59] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[59]_i_1_n_0 ),
        .Q(in8[67]),
        .R(iRst));
  FDRE \rBuffer_reg[5] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_10),
        .Q(in8[13]),
        .R(iRst));
  FDRE \rBuffer_reg[60] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[60]_i_1_n_0 ),
        .Q(in8[68]),
        .R(iRst));
  FDRE \rBuffer_reg[61] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[61]_i_1_n_0 ),
        .Q(in8[69]),
        .R(iRst));
  FDRE \rBuffer_reg[62] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[62]_i_1_n_0 ),
        .Q(in8[70]),
        .R(iRst));
  FDRE \rBuffer_reg[63] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[63]_i_1_n_0 ),
        .Q(in8[71]),
        .R(iRst));
  FDRE \rBuffer_reg[64] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[64]_i_1_n_0 ),
        .Q(in8[72]),
        .R(iRst));
  FDRE \rBuffer_reg[65] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[65]_i_1_n_0 ),
        .Q(in8[73]),
        .R(iRst));
  FDRE \rBuffer_reg[66] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[66]_i_1_n_0 ),
        .Q(in8[74]),
        .R(iRst));
  FDRE \rBuffer_reg[67] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[67]_i_1_n_0 ),
        .Q(in8[75]),
        .R(iRst));
  FDRE \rBuffer_reg[68] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[68]_i_1_n_0 ),
        .Q(in8[76]),
        .R(iRst));
  FDRE \rBuffer_reg[69] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[69]_i_1_n_0 ),
        .Q(in8[77]),
        .R(iRst));
  FDRE \rBuffer_reg[6] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_9),
        .Q(in8[14]),
        .R(iRst));
  FDRE \rBuffer_reg[70] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[70]_i_1_n_0 ),
        .Q(in8[78]),
        .R(iRst));
  FDRE \rBuffer_reg[71] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[71]_i_1_n_0 ),
        .Q(in8[79]),
        .R(iRst));
  FDRE \rBuffer_reg[72] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[72]_i_1_n_0 ),
        .Q(in8[80]),
        .R(iRst));
  FDRE \rBuffer_reg[73] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[73]_i_1_n_0 ),
        .Q(in8[81]),
        .R(iRst));
  FDRE \rBuffer_reg[74] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[74]_i_1_n_0 ),
        .Q(in8[82]),
        .R(iRst));
  FDRE \rBuffer_reg[75] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[75]_i_1_n_0 ),
        .Q(in8[83]),
        .R(iRst));
  FDRE \rBuffer_reg[76] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[76]_i_1_n_0 ),
        .Q(in8[84]),
        .R(iRst));
  FDRE \rBuffer_reg[77] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[77]_i_1_n_0 ),
        .Q(in8[85]),
        .R(iRst));
  FDRE \rBuffer_reg[78] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[78]_i_1_n_0 ),
        .Q(in8[86]),
        .R(iRst));
  FDRE \rBuffer_reg[79] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[79]_i_1_n_0 ),
        .Q(in8[87]),
        .R(iRst));
  FDRE \rBuffer_reg[7] 
       (.C(iClk),
        .CE(rBuffer),
        .D(UART_RX_INST_n_8),
        .Q(in8[15]),
        .R(iRst));
  FDRE \rBuffer_reg[80] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[80]_i_1_n_0 ),
        .Q(in8[88]),
        .R(iRst));
  FDRE \rBuffer_reg[81] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[81]_i_1_n_0 ),
        .Q(in8[89]),
        .R(iRst));
  FDRE \rBuffer_reg[82] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[82]_i_1_n_0 ),
        .Q(in8[90]),
        .R(iRst));
  FDRE \rBuffer_reg[83] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[83]_i_1_n_0 ),
        .Q(in8[91]),
        .R(iRst));
  FDRE \rBuffer_reg[84] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[84]_i_1_n_0 ),
        .Q(in8[92]),
        .R(iRst));
  FDRE \rBuffer_reg[85] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[85]_i_1_n_0 ),
        .Q(in8[93]),
        .R(iRst));
  FDRE \rBuffer_reg[86] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[86]_i_1_n_0 ),
        .Q(in8[94]),
        .R(iRst));
  FDRE \rBuffer_reg[87] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[87]_i_1_n_0 ),
        .Q(in8[95]),
        .R(iRst));
  FDRE \rBuffer_reg[88] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[88]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[88] ),
        .R(iRst));
  FDRE \rBuffer_reg[89] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[89]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[89] ),
        .R(iRst));
  FDRE \rBuffer_reg[8] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[8]_i_1_n_0 ),
        .Q(in8[16]),
        .R(iRst));
  FDRE \rBuffer_reg[90] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[90]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[90] ),
        .R(iRst));
  FDRE \rBuffer_reg[91] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[91]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[91] ),
        .R(iRst));
  FDRE \rBuffer_reg[92] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[92]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[92] ),
        .R(iRst));
  FDRE \rBuffer_reg[93] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[93]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[93] ),
        .R(iRst));
  FDRE \rBuffer_reg[94] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[94]_i_1_n_0 ),
        .Q(\rBuffer_reg_n_0_[94] ),
        .R(iRst));
  FDRE \rBuffer_reg[95] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[95]_i_2_n_0 ),
        .Q(\rBuffer_reg_n_0_[95] ),
        .R(iRst));
  FDRE \rBuffer_reg[9] 
       (.C(iClk),
        .CE(rBuffer),
        .D(\rBuffer[9]_i_1_n_0 ),
        .Q(in8[17]),
        .R(iRst));
  LUT3 #(
    .INIT(8'h80)) 
    \rCnt[4]_i_4 
       (.I0(\rCnt_reg_n_0_[2] ),
        .I1(\rCnt_reg_n_0_[0] ),
        .I2(\rCnt_reg_n_0_[1] ),
        .O(\rCnt[4]_i_4_n_0 ));
  FDRE \rCnt_reg[0] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_RX_INST_n_4),
        .Q(\rCnt_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_reg[1] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_RX_INST_n_3),
        .Q(\rCnt_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_reg[2] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_RX_INST_n_2),
        .Q(\rCnt_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_reg[3] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_RX_INST_n_1),
        .Q(\rCnt_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCnt_reg[4] 
       (.C(iClk),
        .CE(rCnt),
        .D(UART_RX_INST_n_0),
        .Q(\rCnt_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rTxByte_reg[0] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(p_0_in[0]),
        .Q(rTxByte[0]),
        .R(iRst));
  FDRE \rTxByte_reg[1] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(p_0_in[1]),
        .Q(rTxByte[1]),
        .R(iRst));
  FDRE \rTxByte_reg[2] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(p_0_in[2]),
        .Q(rTxByte[2]),
        .R(iRst));
  FDRE \rTxByte_reg[3] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(p_0_in[3]),
        .Q(rTxByte[3]),
        .R(iRst));
  FDRE \rTxByte_reg[4] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(p_0_in[4]),
        .Q(rTxByte[4]),
        .R(iRst));
  FDRE \rTxByte_reg[5] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(p_0_in[5]),
        .Q(rTxByte[5]),
        .R(iRst));
  FDRE \rTxByte_reg[6] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(p_0_in[6]),
        .Q(rTxByte[6]),
        .R(iRst));
  FDRE \rTxByte_reg[7] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(p_0_in[7]),
        .Q(rTxByte[7]),
        .R(iRst));
  FDRE rTxStart_reg
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_14),
        .Q(rTxStart_reg_n_0),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_uart_top_0_0_uart_tx
   (D,
    \FSM_onehot_rFSM_reg[2] ,
    E,
    \FSM_onehot_rFSM_reg[2]_0 ,
    oTx,
    \FSM_onehot_rFSM_Current_reg[4]_0 ,
    Q,
    \rTxByte_reg[7] ,
    \rBuffer_reg[0] ,
    \rBuffer_reg[0]_0 ,
    \FSM_onehot_rFSM_reg[2]_1 ,
    rTxStart_reg,
    \rTxData_Current_reg[7]_0 ,
    iRst,
    iClk);
  output [7:0]D;
  output [2:0]\FSM_onehot_rFSM_reg[2] ;
  output [0:0]E;
  output \FSM_onehot_rFSM_reg[2]_0 ;
  output oTx;
  output \FSM_onehot_rFSM_Current_reg[4]_0 ;
  input [2:0]Q;
  input [7:0]\rTxByte_reg[7] ;
  input [3:0]\rBuffer_reg[0] ;
  input \rBuffer_reg[0]_0 ;
  input \FSM_onehot_rFSM_reg[2]_1 ;
  input rTxStart_reg;
  input [7:0]\rTxData_Current_reg[7]_0 ;
  input iRst;
  input iClk;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rFSM[3]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[0]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current_reg[4]_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire [2:0]\FSM_onehot_rFSM_reg[2] ;
  wire \FSM_onehot_rFSM_reg[2]_0 ;
  wire \FSM_onehot_rFSM_reg[2]_1 ;
  wire [2:0]Q;
  wire iClk;
  wire iRst;
  wire [6:0]in7;
  wire oTx;
  wire [2:0]rBit_Current;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rBit_Current[2]_i_2_n_0 ;
  wire [3:0]\rBuffer_reg[0] ;
  wire \rBuffer_reg[0]_0 ;
  wire \rCnt_Current[0]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_2_n_0 ;
  wire \rCnt_Current[10]_i_3_n_0 ;
  wire \rCnt_Current[10]_i_4_n_0 ;
  wire \rCnt_Current[1]_i_1_n_0 ;
  wire \rCnt_Current[2]_i_1_n_0 ;
  wire \rCnt_Current[3]_i_1_n_0 ;
  wire \rCnt_Current[4]_i_1_n_0 ;
  wire \rCnt_Current[5]_i_1_n_0 ;
  wire \rCnt_Current[5]_i_2_n_0 ;
  wire \rCnt_Current[6]_i_1_n_0 ;
  wire \rCnt_Current[7]_i_1_n_0 ;
  wire \rCnt_Current[8]_i_1_n_0 ;
  wire \rCnt_Current[9]_i_1_n_0 ;
  wire \rCnt_Current[9]_i_2_n_0 ;
  wire \rCnt_Current_reg_n_0_[0] ;
  wire \rCnt_Current_reg_n_0_[10] ;
  wire \rCnt_Current_reg_n_0_[1] ;
  wire \rCnt_Current_reg_n_0_[2] ;
  wire \rCnt_Current_reg_n_0_[3] ;
  wire \rCnt_Current_reg_n_0_[4] ;
  wire \rCnt_Current_reg_n_0_[5] ;
  wire \rCnt_Current_reg_n_0_[6] ;
  wire \rCnt_Current_reg_n_0_[7] ;
  wire \rCnt_Current_reg_n_0_[8] ;
  wire \rCnt_Current_reg_n_0_[9] ;
  wire [7:0]\rTxByte_reg[7] ;
  wire \rTxData_Current[0]_i_1_n_0 ;
  wire \rTxData_Current[1]_i_1_n_0 ;
  wire \rTxData_Current[2]_i_1_n_0 ;
  wire \rTxData_Current[3]_i_1_n_0 ;
  wire \rTxData_Current[4]_i_1_n_0 ;
  wire \rTxData_Current[5]_i_1_n_0 ;
  wire \rTxData_Current[6]_i_1_n_0 ;
  wire \rTxData_Current[7]_i_2_n_0 ;
  wire \rTxData_Current[7]_i_3_n_0 ;
  wire [7:0]\rTxData_Current_reg[7]_0 ;
  wire \rTxData_Current_reg_n_0_[0] ;
  wire rTxStart_reg;
  wire wTxData_Next;
  wire wTxDone;

  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rFSM[2]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[2]_1 ),
        .I1(\rBuffer_reg[0] [0]),
        .I2(wTxDone),
        .I3(\rBuffer_reg[0] [2]),
        .O(\FSM_onehot_rFSM_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rFSM[3]_i_1 
       (.I0(wTxDone),
        .I1(\rBuffer_reg[0] [2]),
        .I2(\FSM_onehot_rFSM[3]_i_2_n_0 ),
        .I3(\rBuffer_reg[0] [1]),
        .O(\FSM_onehot_rFSM_reg[2] [1]));
  LUT5 #(
    .INIT(32'h000E0E0E)) 
    \FSM_onehot_rFSM[3]_i_2 
       (.I0(wTxDone),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\FSM_onehot_rFSM[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AA80AA80AAAA)) 
    \FSM_onehot_rFSM[4]_i_2 
       (.I0(\rBuffer_reg[0] [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(wTxDone),
        .O(\FSM_onehot_rFSM_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_rFSM_Current[0]_i_1 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(wTxDone),
        .O(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_rFSM_Current[1]_i_1 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF007F00)) 
    \FSM_onehot_rFSM_Current[2]_i_1 
       (.I0(rBit_Current[1]),
        .I1(rBit_Current[0]),
        .I2(rBit_Current[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \FSM_onehot_rFSM_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I2(rBit_Current[1]),
        .I3(rBit_Current[0]),
        .I4(rBit_Current[2]),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rFSM_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \FSM_onehot_rFSM_Current[4]_i_2 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[7] ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current_reg_n_0_[9] ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .I5(\rCnt_Current_reg_n_0_[10] ),
        .O(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_rFSM_Current[4]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[3] ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[5] ),
        .I3(\rCnt_Current_reg_n_0_[4] ),
        .O(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ),
        .Q(wTxDone),
        .R(iRst));
  LUT3 #(
    .INIT(8'h8B)) 
    oTx_INST_0
       (.I0(\rTxData_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(oTx));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h45B0)) 
    \rBit_Current[0]_i_1 
       (.I0(\rBit_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(rBit_Current[0]),
        .O(\rBit_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h75338A00)) 
    \rBit_Current[1]_i_1 
       (.I0(rBit_Current[0]),
        .I1(\rBit_Current[2]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(rBit_Current[1]),
        .O(\rBit_Current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F770F0F80880000)) 
    \rBit_Current[2]_i_1 
       (.I0(rBit_Current[1]),
        .I1(rBit_Current[0]),
        .I2(\rBit_Current[2]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I5(rBit_Current[2]),
        .O(\rBit_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rBit_Current[2]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rBit_Current[2]_i_2_n_0 ));
  FDRE \rBit_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[0]_i_1_n_0 ),
        .Q(rBit_Current[0]),
        .R(iRst));
  FDRE \rBit_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[1]_i_1_n_0 ),
        .Q(rBit_Current[1]),
        .R(iRst));
  FDRE \rBit_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[2]_i_1_n_0 ),
        .Q(rBit_Current[2]),
        .R(iRst));
  LUT6 #(
    .INIT(64'hEEEEEFFFEEEEEEEE)) 
    \rBuffer[95]_i_1 
       (.I0(\FSM_onehot_rFSM_reg[2]_0 ),
        .I1(\rBuffer_reg[0] [3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\rBuffer_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h002A002A002A0000)) 
    \rBuffer[95]_i_3 
       (.I0(\rBuffer_reg[0] [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(wTxDone),
        .O(\FSM_onehot_rFSM_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rCnt_Current[0]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \rCnt_Current[10]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[9] ),
        .I1(\rCnt_Current[10]_i_2_n_0 ),
        .I2(\rCnt_Current[10]_i_3_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[10] ),
        .O(\rCnt_Current[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rCnt_Current[10]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[8] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[9]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FE00FEFEFE00FE)) 
    \rCnt_Current[10]_i_3 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[10] ),
        .I4(\rCnt_Current[10]_i_4_n_0 ),
        .I5(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .O(\rCnt_Current[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rCnt_Current[10]_i_4 
       (.I0(\rCnt_Current_reg_n_0_[7] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current_reg_n_0_[9] ),
        .I3(\rCnt_Current_reg_n_0_[8] ),
        .O(\rCnt_Current[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rCnt_Current[1]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[2]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[3]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .O(\rCnt_Current[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rCnt_Current[4]_i_1 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[1] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .I5(\rCnt_Current_reg_n_0_[4] ),
        .O(\rCnt_Current[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \rCnt_Current[5]_i_1 
       (.I0(\rCnt_Current[5]_i_2_n_0 ),
        .I1(\rCnt_Current[10]_i_3_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[5] ),
        .O(\rCnt_Current[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \rCnt_Current[5]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[4] ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[1] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .O(\rCnt_Current[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \rCnt_Current[6]_i_1 
       (.I0(\rCnt_Current[9]_i_2_n_0 ),
        .I1(\rCnt_Current[10]_i_3_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .O(\rCnt_Current[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \rCnt_Current[7]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[6] ),
        .I1(\rCnt_Current[9]_i_2_n_0 ),
        .I2(\rCnt_Current[10]_i_3_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \rCnt_Current[8]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[7] ),
        .I1(\rCnt_Current[9]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current[10]_i_3_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .O(\rCnt_Current[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \rCnt_Current[9]_i_1 
       (.I0(\rCnt_Current_reg_n_0_[8] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[9]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[9] ),
        .O(\rCnt_Current[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rCnt_Current[9]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[5] ),
        .I1(\rCnt_Current_reg_n_0_[3] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[0] ),
        .I4(\rCnt_Current_reg_n_0_[2] ),
        .I5(\rCnt_Current_reg_n_0_[4] ),
        .O(\rCnt_Current[9]_i_2_n_0 ));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[0]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[10]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[10] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[1]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[2]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[3]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[4]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[5]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[5] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[6]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[6] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[7]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[7] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[8]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[8] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[9]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[9] ),
        .R(iRst));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(wTxDone),
        .I5(\rTxByte_reg[7] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(wTxDone),
        .I5(\rTxByte_reg[7] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(wTxDone),
        .I5(\rTxByte_reg[7] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(wTxDone),
        .I5(\rTxByte_reg[7] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(wTxDone),
        .I5(\rTxByte_reg[7] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(wTxDone),
        .I5(\rTxByte_reg[7] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(wTxDone),
        .I5(\rTxByte_reg[7] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0707070000000000)) 
    \rTxByte[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(wTxDone),
        .I5(\rTxByte_reg[7] [7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [0]),
        .I3(in7[0]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [1]),
        .I3(in7[1]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [2]),
        .I3(in7[2]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [3]),
        .I3(in7[3]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [4]),
        .I3(in7[4]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[5]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [5]),
        .I3(in7[5]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rTxData_Current[6]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current_reg[7]_0 [6]),
        .I3(in7[6]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \rTxData_Current[7]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I1(\rTxData_Current[7]_i_3_n_0 ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(rTxStart_reg),
        .O(wTxData_Next));
  LUT2 #(
    .INIT(4'h8)) 
    \rTxData_Current[7]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\rTxData_Current_reg[7]_0 [7]),
        .O(\rTxData_Current[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \rTxData_Current[7]_i_3 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[1]),
        .I2(rBit_Current[0]),
        .I3(rBit_Current[2]),
        .O(\rTxData_Current[7]_i_3_n_0 ));
  FDRE \rTxData_Current_reg[0] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[0]_i_1_n_0 ),
        .Q(\rTxData_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rTxData_Current_reg[1] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[1]_i_1_n_0 ),
        .Q(in7[0]),
        .R(iRst));
  FDRE \rTxData_Current_reg[2] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[2]_i_1_n_0 ),
        .Q(in7[1]),
        .R(iRst));
  FDRE \rTxData_Current_reg[3] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[3]_i_1_n_0 ),
        .Q(in7[2]),
        .R(iRst));
  FDRE \rTxData_Current_reg[4] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[4]_i_1_n_0 ),
        .Q(in7[3]),
        .R(iRst));
  FDRE \rTxData_Current_reg[5] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[5]_i_1_n_0 ),
        .Q(in7[4]),
        .R(iRst));
  FDRE \rTxData_Current_reg[6] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[6]_i_1_n_0 ),
        .Q(in7[5]),
        .R(iRst));
  FDRE \rTxData_Current_reg[7] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[7]_i_2_n_0 ),
        .Q(in7[6]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hAACFAA00)) 
    rTxStart_i_1
       (.I0(\FSM_onehot_rFSM[3]_i_2_n_0 ),
        .I1(wTxDone),
        .I2(\rBuffer_reg[0] [2]),
        .I3(\rBuffer_reg[0] [1]),
        .I4(rTxStart_reg),
        .O(\FSM_onehot_rFSM_Current_reg[4]_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
