-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Mar 21 23:11:21 2025
-- Host        : Arnaud-Hugo-Laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/hugof/Documents/KU Leuven/FIIW/BAC3/Complex Digital
--               Design/Lab2/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.vhdl}
-- Design      : design_1_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_rx is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_rCurrentState_reg[2]_0\ : out STD_LOGIC;
    \rCnt_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_rFSM_reg[1]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    iClk : in STD_LOGIC;
    \rCnt_reg[0]\ : in STD_LOGIC;
    \rCnt_reg[0]_0\ : in STD_LOGIC;
    rFSM : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rCnt_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_rx : entity is "uart_rx";
end design_1_uart_top_0_0_uart_rx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_rx is
  signal \FSM_sequential_rCurrentState[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rCurrentState[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rCurrentState[2]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_rcurrentstate_reg[2]_0\ : STD_LOGIC;
  signal \FSM_sequential_rFSM[2]_i_5_n_0\ : STD_LOGIC;
  signal rBitCurrent : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBitCurrent[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBitCurrent[0]_i_2_n_0\ : STD_LOGIC;
  signal \rBitCurrent[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBitCurrent[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBitCurrent[2]_i_2_n_0\ : STD_LOGIC;
  signal \rBuffer[95]_i_4_n_0\ : STD_LOGIC;
  signal rCntCurrent : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \rCntCurrent[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCntCurrent[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCntCurrent[10]_i_4_n_0\ : STD_LOGIC;
  signal \rCntCurrent[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCntCurrent[9]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt[3]_i_3_n_0\ : STD_LOGIC;
  signal rCurrentState : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rRx1 : STD_LOGIC;
  signal rRx2 : STD_LOGIC;
  signal rRxByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rRxByte[7]_i_3_n_0\ : STD_LOGIC;
  signal \rRxByte[7]_i_4_n_0\ : STD_LOGIC;
  signal \rRxByte[7]_i_5_n_0\ : STD_LOGIC;
  signal wBitNext : STD_LOGIC;
  signal wCntNext : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wNextState : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wRxByte : STD_LOGIC;
  signal wRxByte0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rCurrentState[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_rCurrentState[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_rCurrentState[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_rCurrentState[2]_i_3\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rCurrentState_reg[0]\ : label is "sIDLE:000,sSTART:001,sREAD:010,sDONE:100,sSTOP:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rCurrentState_reg[1]\ : label is "sIDLE:000,sSTART:001,sREAD:010,sDONE:100,sSTOP:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rCurrentState_reg[2]\ : label is "sIDLE:000,sSTART:001,sREAD:010,sDONE:100,sSTOP:011";
  attribute SOFT_HLUTNM of \rBitCurrent[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rBuffer[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rBuffer[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rBuffer[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBuffer[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBuffer[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rBuffer[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rBuffer[95]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rCntCurrent[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rCntCurrent[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rCntCurrent[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rCntCurrent[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rCntCurrent[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rCntCurrent[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rCntCurrent[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rCntCurrent[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rCnt[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rCnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rCnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rCnt[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rRxByte[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rRxByte[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rRxByte[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rRxByte[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rRxByte[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rRxByte[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rRxByte[7]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rRxByte[7]_i_4\ : label is "soft_lutpair4";
begin
  \FSM_sequential_rCurrentState_reg[2]_0\ <= \^fsm_sequential_rcurrentstate_reg[2]_0\;
\FSM_sequential_rCurrentState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF11001D"
    )
        port map (
      I0 => rRx2,
      I1 => rCurrentState(1),
      I2 => \FSM_sequential_rCurrentState[0]_i_2_n_0\,
      I3 => rCurrentState(0),
      I4 => \FSM_sequential_rCurrentState[2]_i_2_n_0\,
      I5 => rCurrentState(2),
      O => wNextState(0)
    );
\FSM_sequential_rCurrentState[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rBitCurrent(0),
      I1 => rBitCurrent(1),
      I2 => rBitCurrent(2),
      O => \FSM_sequential_rCurrentState[0]_i_2_n_0\
    );
\FSM_sequential_rCurrentState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C6"
    )
        port map (
      I0 => rCurrentState(0),
      I1 => rCurrentState(1),
      I2 => \FSM_sequential_rCurrentState[2]_i_2_n_0\,
      I3 => rCurrentState(2),
      O => wNextState(1)
    );
\FSM_sequential_rCurrentState[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => rCurrentState(0),
      I1 => rCurrentState(1),
      I2 => rCurrentState(2),
      I3 => \FSM_sequential_rCurrentState[2]_i_2_n_0\,
      O => wNextState(2)
    );
\FSM_sequential_rCurrentState[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_rCurrentState[2]_i_3_n_0\,
      I1 => rCntCurrent(7),
      I2 => rCntCurrent(6),
      I3 => rCntCurrent(9),
      I4 => rCntCurrent(8),
      I5 => rCntCurrent(10),
      O => \FSM_sequential_rCurrentState[2]_i_2_n_0\
    );
\FSM_sequential_rCurrentState[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rCntCurrent(4),
      I1 => rCntCurrent(2),
      I2 => rCntCurrent(3),
      I3 => rCntCurrent(5),
      O => \FSM_sequential_rCurrentState[2]_i_3_n_0\
    );
\FSM_sequential_rCurrentState_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wNextState(0),
      Q => rCurrentState(0),
      R => iRst
    );
\FSM_sequential_rCurrentState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wNextState(1),
      Q => rCurrentState(1),
      R => iRst
    );
\FSM_sequential_rCurrentState_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wNextState(2),
      Q => rCurrentState(2),
      R => iRst
    );
\FSM_sequential_rFSM[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABFAABFAABFAAFF"
    )
        port map (
      I0 => \FSM_sequential_rFSM[2]_i_5_n_0\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => rFSM(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \rCnt_reg[3]\
    );
\FSM_sequential_rFSM[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1F1F1F1F1B1F"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(0),
      I2 => rFSM(2),
      I3 => rCurrentState(2),
      I4 => rCurrentState(1),
      I5 => rCurrentState(0),
      O => \FSM_sequential_rFSM[2]_i_5_n_0\
    );
\rBitCurrent[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC3C00020282AA"
    )
        port map (
      I0 => \rBitCurrent[0]_i_2_n_0\,
      I1 => rCurrentState(0),
      I2 => rCurrentState(1),
      I3 => \FSM_sequential_rCurrentState[2]_i_2_n_0\,
      I4 => rCurrentState(2),
      I5 => rBitCurrent(0),
      O => \rBitCurrent[0]_i_1_n_0\
    );
\rBitCurrent[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040404040404"
    )
        port map (
      I0 => rCurrentState(0),
      I1 => rCurrentState(1),
      I2 => rCurrentState(2),
      I3 => rBitCurrent(2),
      I4 => rBitCurrent(1),
      I5 => rBitCurrent(0),
      O => \rBitCurrent[0]_i_2_n_0\
    );
\rBitCurrent[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF02000000"
    )
        port map (
      I0 => rCurrentState(1),
      I1 => rCurrentState(2),
      I2 => rCurrentState(0),
      I3 => rBitCurrent(0),
      I4 => wBitNext,
      I5 => rBitCurrent(1),
      O => \rBitCurrent[1]_i_1_n_0\
    );
\rBitCurrent[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111111119FFF9999"
    )
        port map (
      I0 => rCurrentState(0),
      I1 => rCurrentState(1),
      I2 => \FSM_sequential_rCurrentState[2]_i_3_n_0\,
      I3 => \rCntCurrent[10]_i_4_n_0\,
      I4 => rCntCurrent(10),
      I5 => rCurrentState(2),
      O => wBitNext
    );
\rBitCurrent[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC3C2000000010"
    )
        port map (
      I0 => \rBitCurrent[2]_i_2_n_0\,
      I1 => rCurrentState(0),
      I2 => rCurrentState(1),
      I3 => \FSM_sequential_rCurrentState[2]_i_2_n_0\,
      I4 => rCurrentState(2),
      I5 => rBitCurrent(2),
      O => \rBitCurrent[2]_i_1_n_0\
    );
\rBitCurrent[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rBitCurrent(1),
      I1 => rBitCurrent(0),
      O => \rBitCurrent[2]_i_2_n_0\
    );
\rBitCurrent_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBitCurrent[0]_i_1_n_0\,
      Q => rBitCurrent(0),
      R => iRst
    );
\rBitCurrent_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBitCurrent[1]_i_1_n_0\,
      Q => rBitCurrent(1),
      R => iRst
    );
\rBitCurrent_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBitCurrent[2]_i_1_n_0\,
      Q => rBitCurrent(2),
      R => iRst
    );
\rBuffer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(2),
      I2 => rRxByte(0),
      O => \FSM_sequential_rFSM_reg[1]\(0)
    );
\rBuffer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(2),
      I2 => rRxByte(1),
      O => \FSM_sequential_rFSM_reg[1]\(1)
    );
\rBuffer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(2),
      I2 => rRxByte(2),
      O => \FSM_sequential_rFSM_reg[1]\(2)
    );
\rBuffer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(2),
      I2 => rRxByte(3),
      O => \FSM_sequential_rFSM_reg[1]\(3)
    );
\rBuffer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(2),
      I2 => rRxByte(4),
      O => \FSM_sequential_rFSM_reg[1]\(4)
    );
\rBuffer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(2),
      I2 => rRxByte(5),
      O => \FSM_sequential_rFSM_reg[1]\(5)
    );
\rBuffer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(2),
      I2 => rRxByte(6),
      O => \FSM_sequential_rFSM_reg[1]\(6)
    );
\rBuffer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(2),
      I2 => rRxByte(7),
      O => \FSM_sequential_rFSM_reg[1]\(7)
    );
\rBuffer[95]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF4000"
    )
        port map (
      I0 => \rBuffer[95]_i_4_n_0\,
      I1 => rCurrentState(2),
      I2 => \rCnt_reg[0]_1\,
      I3 => rFSM(0),
      I4 => rFSM(2),
      I5 => rFSM(1),
      O => \^fsm_sequential_rcurrentstate_reg[2]_0\
    );
\rBuffer[95]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rCurrentState(0),
      I1 => rCurrentState(1),
      O => \rBuffer[95]_i_4_n_0\
    );
\rCntCurrent[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCntCurrent[10]_i_3_n_0\,
      I1 => rCntCurrent(0),
      O => wCntNext(0)
    );
\rCntCurrent[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => rCntCurrent(8),
      I1 => rCntCurrent(7),
      I2 => \rCntCurrent[10]_i_2_n_0\,
      I3 => rCntCurrent(9),
      I4 => \rCntCurrent[10]_i_3_n_0\,
      I5 => rCntCurrent(10),
      O => wCntNext(10)
    );
\rCntCurrent[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => rCntCurrent(4),
      I1 => rCntCurrent(2),
      I2 => rCntCurrent(3),
      I3 => rCntCurrent(5),
      I4 => \rCntCurrent[5]_i_2_n_0\,
      I5 => rCntCurrent(6),
      O => \rCntCurrent[10]_i_2_n_0\
    );
\rCntCurrent[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4055405540550000"
    )
        port map (
      I0 => rCurrentState(2),
      I1 => \FSM_sequential_rCurrentState[2]_i_3_n_0\,
      I2 => \rCntCurrent[10]_i_4_n_0\,
      I3 => rCntCurrent(10),
      I4 => rCurrentState(1),
      I5 => rCurrentState(0),
      O => \rCntCurrent[10]_i_3_n_0\
    );
\rCntCurrent[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rCntCurrent(7),
      I1 => rCntCurrent(6),
      I2 => rCntCurrent(9),
      I3 => rCntCurrent(8),
      O => \rCntCurrent[10]_i_4_n_0\
    );
\rCntCurrent[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCntCurrent[10]_i_3_n_0\,
      I1 => rCntCurrent(0),
      I2 => rCntCurrent(1),
      O => wCntNext(1)
    );
\rCntCurrent[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCntCurrent[10]_i_3_n_0\,
      I1 => rCntCurrent(0),
      I2 => rCntCurrent(1),
      I3 => rCntCurrent(2),
      O => wCntNext(2)
    );
\rCntCurrent[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCntCurrent[10]_i_3_n_0\,
      I1 => rCntCurrent(2),
      I2 => rCntCurrent(1),
      I3 => rCntCurrent(0),
      I4 => rCntCurrent(3),
      O => wCntNext(3)
    );
\rCntCurrent[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCntCurrent[10]_i_3_n_0\,
      I1 => rCntCurrent(1),
      I2 => rCntCurrent(0),
      I3 => rCntCurrent(2),
      I4 => rCntCurrent(3),
      I5 => rCntCurrent(4),
      O => wCntNext(4)
    );
\rCntCurrent[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCntCurrent[10]_i_3_n_0\,
      I1 => \rCntCurrent[5]_i_2_n_0\,
      I2 => rCntCurrent(3),
      I3 => rCntCurrent(2),
      I4 => rCntCurrent(4),
      I5 => rCntCurrent(5),
      O => wCntNext(5)
    );
\rCntCurrent[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCntCurrent(1),
      I1 => rCntCurrent(0),
      O => \rCntCurrent[5]_i_2_n_0\
    );
\rCntCurrent[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCntCurrent[10]_i_3_n_0\,
      I1 => \rCntCurrent[9]_i_2_n_0\,
      I2 => rCntCurrent(6),
      O => wCntNext(6)
    );
\rCntCurrent[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCntCurrent[10]_i_3_n_0\,
      I1 => rCntCurrent(6),
      I2 => \rCntCurrent[9]_i_2_n_0\,
      I3 => rCntCurrent(7),
      O => wCntNext(7)
    );
\rCntCurrent[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => rCntCurrent(7),
      I1 => rCntCurrent(6),
      I2 => \rCntCurrent[9]_i_2_n_0\,
      I3 => \rCntCurrent[10]_i_3_n_0\,
      I4 => rCntCurrent(8),
      O => wCntNext(8)
    );
\rCntCurrent[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \rCntCurrent[9]_i_2_n_0\,
      I1 => rCntCurrent(6),
      I2 => rCntCurrent(7),
      I3 => rCntCurrent(8),
      I4 => \rCntCurrent[10]_i_3_n_0\,
      I5 => rCntCurrent(9),
      O => wCntNext(9)
    );
\rCntCurrent[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rCntCurrent(0),
      I1 => rCntCurrent(1),
      I2 => rCntCurrent(5),
      I3 => rCntCurrent(3),
      I4 => rCntCurrent(2),
      I5 => rCntCurrent(4),
      O => \rCntCurrent[9]_i_2_n_0\
    );
\rCntCurrent_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(0),
      Q => rCntCurrent(0),
      R => iRst
    );
\rCntCurrent_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(10),
      Q => rCntCurrent(10),
      R => iRst
    );
\rCntCurrent_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(1),
      Q => rCntCurrent(1),
      R => iRst
    );
\rCntCurrent_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(2),
      Q => rCntCurrent(2),
      R => iRst
    );
\rCntCurrent_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(3),
      Q => rCntCurrent(3),
      R => iRst
    );
\rCntCurrent_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(4),
      Q => rCntCurrent(4),
      R => iRst
    );
\rCntCurrent_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(5),
      Q => rCntCurrent(5),
      R => iRst
    );
\rCntCurrent_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(6),
      Q => rCntCurrent(6),
      R => iRst
    );
\rCntCurrent_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(7),
      Q => rCntCurrent(7),
      R => iRst
    );
\rCntCurrent_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(8),
      Q => rCntCurrent(8),
      R => iRst
    );
\rCntCurrent_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCntNext(9),
      Q => rCntCurrent(9),
      R => iRst
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt[3]_i_3_n_0\,
      I1 => Q(0),
      O => D(0)
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt[3]_i_3_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => D(1)
    );
\rCnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt[3]_i_3_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => D(2)
    );
\rCnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAFAAAAABAA"
    )
        port map (
      I0 => \^fsm_sequential_rcurrentstate_reg[2]_0\,
      I1 => \rCnt_reg[0]\,
      I2 => \rCnt_reg[0]_0\,
      I3 => rFSM(1),
      I4 => rFSM(2),
      I5 => rFSM(0),
      O => E(0)
    );
\rCnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt[3]_i_3_n_0\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => D(3)
    );
\rCnt[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => rCurrentState(2),
      I1 => rCurrentState(1),
      I2 => rCurrentState(0),
      I3 => rFSM(2),
      I4 => rFSM(1),
      I5 => \rCnt_reg[0]_0\,
      O => \rCnt[3]_i_3_n_0\
    );
rRx1_reg: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => '1',
      D => iRx,
      Q => rRx1,
      S => iRst
    );
rRx2_reg: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => '1',
      D => rRx1,
      Q => rRx2,
      S => iRst
    );
\rRxByte[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCurrentState(1),
      I1 => rRxByte(1),
      O => wRxByte0_in(0)
    );
\rRxByte[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCurrentState(1),
      I1 => rRxByte(2),
      O => wRxByte0_in(1)
    );
\rRxByte[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCurrentState(1),
      I1 => rRxByte(3),
      O => wRxByte0_in(2)
    );
\rRxByte[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCurrentState(1),
      I1 => rRxByte(4),
      O => wRxByte0_in(3)
    );
\rRxByte[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCurrentState(1),
      I1 => rRxByte(5),
      O => wRxByte0_in(4)
    );
\rRxByte[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCurrentState(1),
      I1 => rRxByte(6),
      O => wRxByte0_in(5)
    );
\rRxByte[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCurrentState(1),
      I1 => rRxByte(7),
      O => wRxByte0_in(6)
    );
\rRxByte[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F50015"
    )
        port map (
      I0 => rCurrentState(1),
      I1 => rCurrentState(0),
      I2 => \FSM_sequential_rCurrentState[2]_i_2_n_0\,
      I3 => rCurrentState(2),
      I4 => \rRxByte[7]_i_3_n_0\,
      O => wRxByte
    );
\rRxByte[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rCurrentState(1),
      I1 => rRx2,
      O => wRxByte0_in(7)
    );
\rRxByte[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \rRxByte[7]_i_4_n_0\,
      I1 => rCntCurrent(5),
      I2 => rCntCurrent(1),
      I3 => rCntCurrent(7),
      I4 => rCntCurrent(6),
      I5 => \rRxByte[7]_i_5_n_0\,
      O => \rRxByte[7]_i_3_n_0\
    );
\rRxByte[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rCntCurrent(3),
      I1 => rCntCurrent(2),
      I2 => rCntCurrent(4),
      O => \rRxByte[7]_i_4_n_0\
    );
\rRxByte[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200020002"
    )
        port map (
      I0 => rCntCurrent(9),
      I1 => rCntCurrent(8),
      I2 => rCntCurrent(10),
      I3 => rCurrentState(0),
      I4 => rCntCurrent(0),
      I5 => rCntCurrent(1),
      O => \rRxByte[7]_i_5_n_0\
    );
\rRxByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wRxByte,
      D => wRxByte0_in(0),
      Q => rRxByte(0),
      R => iRst
    );
\rRxByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wRxByte,
      D => wRxByte0_in(1),
      Q => rRxByte(1),
      R => iRst
    );
\rRxByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wRxByte,
      D => wRxByte0_in(2),
      Q => rRxByte(2),
      R => iRst
    );
\rRxByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wRxByte,
      D => wRxByte0_in(3),
      Q => rRxByte(3),
      R => iRst
    );
\rRxByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wRxByte,
      D => wRxByte0_in(4),
      Q => rRxByte(4),
      R => iRst
    );
\rRxByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wRxByte,
      D => wRxByte0_in(5),
      Q => rRxByte(5),
      R => iRst
    );
\rRxByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wRxByte,
      D => wRxByte0_in(6),
      Q => rRxByte(6),
      R => iRst
    );
\rRxByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wRxByte,
      D => wRxByte0_in(7),
      Q => rRxByte(7),
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_tx is
  port (
    \FSM_sequential_rFSM_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_rFSM_Current_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_rFSM_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_rFSM_reg[0]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_rFSM_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    oTx : out STD_LOGIC;
    \FSM_sequential_rFSM_reg[2]_0\ : out STD_LOGIC;
    rFSM : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_rFSM_reg[2]_1\ : in STD_LOGIC;
    \FSM_sequential_rFSM_reg[2]_2\ : in STD_LOGIC;
    rTxStart_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rTxByte_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rBuffer_reg[0]\ : in STD_LOGIC;
    \rTxData_Current_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_tx : entity is "uart_tx";
end design_1_uart_top_0_0_uart_tx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_tx is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_rFSM_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rfsm_current_reg[0]_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_4_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_5_n_0\ : STD_LOGIC;
  signal \rCnt_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[10]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[4]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[5]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[6]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[7]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[8]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[9]\ : STD_LOGIC;
  signal \rFSM__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \rTxData_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_2_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_3_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal rTxStart_i_2_n_0 : STD_LOGIC;
  signal wBit_Next : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  signal wTxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_3\ : label is "soft_lutpair22";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[2]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rCnt_Current[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rCnt_Current[5]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rCnt_Current[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rTxByte[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rTxData_Current[7]_i_3\ : label is "soft_lutpair23";
begin
  E(0) <= \^e\(0);
  \FSM_onehot_rFSM_Current_reg[0]_0\ <= \^fsm_onehot_rfsm_current_reg[0]_0\;
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[1]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F0000FF00"
    )
        port map (
      I0 => rBit_Current(2),
      I1 => rBit_Current(1),
      I2 => rBit_Current(0),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_Current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => rBit_Current(2),
      I4 => rBit_Current(1),
      I5 => rBit_Current(0),
      O => \FSM_onehot_rFSM_Current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      I5 => \rCnt_Current_reg_n_0_[10]\,
      O => \FSM_onehot_rFSM_Current[4]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[4]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[5]\,
      O => \FSM_onehot_rFSM_Current[4]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[0]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[1]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[2]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[3]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[4]_i_1_n_0\,
      Q => wTxDone,
      R => iRst
    );
\FSM_sequential_rFSM[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rFSM__0\(0),
      I1 => \FSM_sequential_rFSM_reg[2]_2\,
      I2 => rFSM(0),
      O => \FSM_sequential_rFSM_reg[0]_1\
    );
\FSM_sequential_rFSM[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A00CF00FA00CF"
    )
        port map (
      I0 => \FSM_sequential_rFSM_reg[2]_1\,
      I1 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I2 => rFSM(1),
      I3 => rFSM(2),
      I4 => rFSM(0),
      I5 => wTxDone,
      O => \rFSM__0\(0)
    );
\FSM_sequential_rFSM[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332FFFF02020000"
    )
        port map (
      I0 => rFSM(0),
      I1 => rFSM(2),
      I2 => \FSM_sequential_rFSM_reg[2]_1\,
      I3 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I4 => \FSM_sequential_rFSM_reg[2]_2\,
      I5 => rFSM(1),
      O => \FSM_sequential_rFSM_reg[0]_0\
    );
\FSM_sequential_rFSM[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00040000"
    )
        port map (
      I0 => rFSM(0),
      I1 => rFSM(1),
      I2 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I3 => \FSM_sequential_rFSM_reg[2]_1\,
      I4 => \FSM_sequential_rFSM_reg[2]_2\,
      I5 => rFSM(2),
      O => \FSM_sequential_rFSM_reg[0]\
    );
\FSM_sequential_rFSM[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EEE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(1),
      I3 => Q(0),
      O => \^fsm_onehot_rfsm_current_reg[0]_0\
    );
oTx_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \rTxData_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => oTx
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => wBit_Next,
      I2 => rBit_Current(0),
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(0),
      I2 => wBit_Next,
      I3 => rBit_Current(1),
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(1),
      I2 => rBit_Current(0),
      I3 => wBit_Next,
      I4 => rBit_Current(2),
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFAAAAAAAAAAAA"
    )
        port map (
      I0 => \rBit_Current[2]_i_3_n_0\,
      I1 => \rBit_Current[2]_i_4_n_0\,
      I2 => \rCnt_Current_reg_n_0_[5]\,
      I3 => \rBit_Current[2]_i_5_n_0\,
      I4 => \rCnt_Current_reg_n_0_[10]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => wBit_Next
    );
\rBit_Current[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wTxDone,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rBit_Current[2]_i_3_n_0\
    );
\rBit_Current[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      O => \rBit_Current[2]_i_4_n_0\
    );
\rBit_Current[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      O => \rBit_Current[2]_i_5_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1_n_0\,
      Q => rBit_Current(0),
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1_n_0\,
      Q => rBit_Current(1),
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1_n_0\,
      Q => rBit_Current(2),
      R => iRst
    );
\rBuffer[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I1 => rFSM(2),
      I2 => rFSM(1),
      I3 => rFSM(0),
      I4 => \rBuffer_reg[0]\,
      O => \FSM_sequential_rFSM_reg[2]\(0)
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[0]_i_1_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[8]\,
      I1 => \rCnt_Current[10]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[7]\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      I5 => \rCnt_Current_reg_n_0_[10]\,
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current_reg_n_0_[5]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      I5 => \rCnt_Current[5]_i_2_n_0\,
      O => \rCnt_Current[10]_i_2_n_0\
    );
\rCnt_Current[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFE00FE00FE00FE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[10]\,
      I4 => \rBit_Current[2]_i_5_n_0\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      O => \rCnt_Current[10]_i_3_n_0\
    );
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      O => \rCnt_Current[1]_i_1_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[0]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current[5]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[4]\,
      I5 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[5]_i_1_n_0\
    );
\rCnt_Current[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[1]\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[5]_i_2_n_0\
    );
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current[9]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current[9]_i_2_n_0\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \rCnt_Current[9]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[7]\,
      I3 => \rCnt_Current[10]_i_3_n_0\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[8]_i_1_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[9]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      I5 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[9]_i_1_n_0\
    );
\rCnt_Current[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[1]\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[4]\,
      I5 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[9]_i_2_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[10]\,
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[4]\,
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[5]\,
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[6]\,
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[7]\,
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[8]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[8]\,
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[9]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[9]\,
      R => iRst
    );
\rTxByte[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[7]\(0),
      O => D(0)
    );
\rTxByte[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[7]\(1),
      O => D(1)
    );
\rTxByte[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[7]\(2),
      O => D(2)
    );
\rTxByte[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[7]\(3),
      O => D(3)
    );
\rTxByte[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[7]\(4),
      O => D(4)
    );
\rTxByte[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[7]\(5),
      O => D(5)
    );
\rTxByte[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[7]\(6),
      O => D(6)
    );
\rTxByte[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040400"
    )
        port map (
      I0 => rFSM(0),
      I1 => rFSM(1),
      I2 => rFSM(2),
      I3 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I4 => \FSM_sequential_rFSM_reg[2]_1\,
      O => \^e\(0)
    );
\rTxByte[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxByte_reg[7]\(7),
      O => D(7)
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(0),
      I3 => in7(0),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(1),
      I3 => in7(1),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(2),
      I3 => in7(2),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(3),
      I3 => in7(3),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(4),
      I3 => in7(4),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(5),
      I3 => in7(5),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(6),
      I3 => in7(6),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[6]_i_1_n_0\
    );
\rTxData_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I1 => \rTxData_Current[7]_i_3_n_0\,
      I2 => rTxStart_reg,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => wTxData_Next
    );
\rTxData_Current[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \rTxData_Current_reg[7]_0\(7),
      O => \rTxData_Current[7]_i_2_n_0\
    );
\rTxData_Current[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(2),
      I2 => rBit_Current(1),
      I3 => rBit_Current(0),
      O => \rTxData_Current[7]_i_3_n_0\
    );
\rTxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[0]_i_1_n_0\,
      Q => \rTxData_Current_reg_n_0_[0]\,
      R => iRst
    );
\rTxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[1]_i_1_n_0\,
      Q => in7(0),
      R => iRst
    );
\rTxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[2]_i_1_n_0\,
      Q => in7(1),
      R => iRst
    );
\rTxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[3]_i_1_n_0\,
      Q => in7(2),
      R => iRst
    );
\rTxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[4]_i_1_n_0\,
      Q => in7(3),
      R => iRst
    );
\rTxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[5]_i_1_n_0\,
      Q => in7(4),
      R => iRst
    );
\rTxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[6]_i_1_n_0\,
      Q => in7(5),
      R => iRst
    );
\rTxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[7]_i_2_n_0\,
      Q => in7(6),
      R => iRst
    );
rTxStart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101000"
    )
        port map (
      I0 => rFSM(2),
      I1 => rFSM(0),
      I2 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I3 => rTxStart_i_2_n_0,
      I4 => \^e\(0),
      I5 => rTxStart_reg,
      O => \FSM_sequential_rFSM_reg[2]_0\
    );
rTxStart_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => wTxDone,
      I1 => rFSM(0),
      I2 => rFSM(2),
      I3 => rFSM(1),
      O => rTxStart_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_top is
  port (
    oTx : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iRx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_top : entity is "uart_top";
end design_1_uart_top_0_0_uart_top;

architecture STRUCTURE of design_1_uart_top_0_0_uart_top is
  signal \FSM_sequential_rFSM[2]_i_3_n_0\ : STD_LOGIC;
  signal UART_RX_INST_n_1 : STD_LOGIC;
  signal UART_RX_INST_n_2 : STD_LOGIC;
  signal UART_RX_INST_n_3 : STD_LOGIC;
  signal UART_RX_INST_n_4 : STD_LOGIC;
  signal UART_RX_INST_n_5 : STD_LOGIC;
  signal UART_RX_INST_n_6 : STD_LOGIC;
  signal UART_TX_INST_n_0 : STD_LOGIC;
  signal UART_TX_INST_n_1 : STD_LOGIC;
  signal UART_TX_INST_n_15 : STD_LOGIC;
  signal UART_TX_INST_n_2 : STD_LOGIC;
  signal UART_TX_INST_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rBuffer : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal \rBuffer[95]_i_5_n_0\ : STD_LOGIC;
  signal rBuffer_1 : STD_LOGIC;
  signal \rBuffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[40]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[41]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[42]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[43]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[52]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[54]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[55]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[56]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[57]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[58]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[59]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[60]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[61]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[62]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[63]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[64]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[65]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[66]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[67]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[68]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[69]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[70]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[71]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[72]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[73]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[74]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[75]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[76]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[77]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[78]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[79]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[80]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[81]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[82]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[83]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[84]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[85]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[86]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[87]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[88]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[89]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[90]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[91]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[92]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[93]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[94]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[95]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[9]\ : STD_LOGIC;
  signal rCnt : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal rFSM : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rTxByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rTxByte_0 : STD_LOGIC;
  signal rTxStart_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[2]_i_3\ : label is "soft_lutpair27";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[0]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[1]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[2]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute SOFT_HLUTNM of \rBuffer[10]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \rBuffer[11]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \rBuffer[12]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \rBuffer[13]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \rBuffer[14]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \rBuffer[15]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \rBuffer[16]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rBuffer[17]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rBuffer[18]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rBuffer[19]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rBuffer[20]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rBuffer[21]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rBuffer[22]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rBuffer[23]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rBuffer[24]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rBuffer[25]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rBuffer[26]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rBuffer[27]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rBuffer[28]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rBuffer[29]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rBuffer[30]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rBuffer[31]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rBuffer[32]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rBuffer[33]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rBuffer[34]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rBuffer[35]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rBuffer[36]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rBuffer[37]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rBuffer[38]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rBuffer[39]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rBuffer[40]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rBuffer[41]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rBuffer[42]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rBuffer[43]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rBuffer[44]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rBuffer[45]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rBuffer[46]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rBuffer[47]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rBuffer[48]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rBuffer[49]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rBuffer[50]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rBuffer[51]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rBuffer[52]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rBuffer[53]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rBuffer[54]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rBuffer[55]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rBuffer[56]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rBuffer[57]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rBuffer[58]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rBuffer[59]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rBuffer[60]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rBuffer[61]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rBuffer[62]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rBuffer[63]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rBuffer[64]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rBuffer[65]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rBuffer[66]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rBuffer[67]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rBuffer[68]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rBuffer[69]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rBuffer[70]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rBuffer[71]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rBuffer[72]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rBuffer[73]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rBuffer[74]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rBuffer[75]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rBuffer[76]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rBuffer[77]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rBuffer[78]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rBuffer[79]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rBuffer[80]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rBuffer[81]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rBuffer[82]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rBuffer[83]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rBuffer[84]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rBuffer[85]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rBuffer[86]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rBuffer[87]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rBuffer[88]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rBuffer[89]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rBuffer[8]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \rBuffer[90]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rBuffer[91]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rBuffer[92]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rBuffer[93]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rBuffer[94]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rBuffer[95]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rBuffer[95]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBuffer[9]_i_1\ : label is "soft_lutpair71";
begin
\FSM_sequential_rFSM[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \rCnt_reg_n_0_[0]\,
      I1 => \rCnt_reg_n_0_[1]\,
      I2 => \rCnt_reg_n_0_[3]\,
      I3 => \rCnt_reg_n_0_[2]\,
      O => \FSM_sequential_rFSM[2]_i_3_n_0\
    );
\FSM_sequential_rFSM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_3,
      Q => rFSM(0),
      R => iRst
    );
\FSM_sequential_rFSM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_2,
      Q => rFSM(1),
      R => iRst
    );
\FSM_sequential_rFSM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_0,
      Q => rFSM(2),
      R => iRst
    );
UART_RX_INST: entity work.design_1_uart_top_0_0_uart_rx
     port map (
      D(3) => UART_RX_INST_n_3,
      D(2) => UART_RX_INST_n_4,
      D(1) => UART_RX_INST_n_5,
      D(0) => UART_RX_INST_n_6,
      E(0) => rCnt,
      \FSM_sequential_rCurrentState_reg[2]_0\ => UART_RX_INST_n_1,
      \FSM_sequential_rFSM_reg[1]\(7 downto 0) => rBuffer(7 downto 0),
      Q(3) => \rCnt_reg_n_0_[3]\,
      Q(2) => \rCnt_reg_n_0_[2]\,
      Q(1) => \rCnt_reg_n_0_[1]\,
      Q(0) => \rCnt_reg_n_0_[0]\,
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      \rCnt_reg[0]\ => UART_TX_INST_n_1,
      \rCnt_reg[0]_0\ => \FSM_sequential_rFSM[2]_i_3_n_0\,
      \rCnt_reg[0]_1\ => \rBuffer[95]_i_5_n_0\,
      \rCnt_reg[3]\ => UART_RX_INST_n_2,
      rFSM(2 downto 0) => rFSM(2 downto 0)
    );
UART_TX_INST: entity work.design_1_uart_top_0_0_uart_tx
     port map (
      D(7 downto 0) => p_0_in(7 downto 0),
      E(0) => rTxByte_0,
      \FSM_onehot_rFSM_Current_reg[0]_0\ => UART_TX_INST_n_1,
      \FSM_sequential_rFSM_reg[0]\ => UART_TX_INST_n_0,
      \FSM_sequential_rFSM_reg[0]_0\ => UART_TX_INST_n_2,
      \FSM_sequential_rFSM_reg[0]_1\ => UART_TX_INST_n_3,
      \FSM_sequential_rFSM_reg[2]\(0) => rBuffer_1,
      \FSM_sequential_rFSM_reg[2]_0\ => UART_TX_INST_n_15,
      \FSM_sequential_rFSM_reg[2]_1\ => \FSM_sequential_rFSM[2]_i_3_n_0\,
      \FSM_sequential_rFSM_reg[2]_2\ => UART_RX_INST_n_2,
      Q(1) => \rCnt_reg_n_0_[3]\,
      Q(0) => \rCnt_reg_n_0_[2]\,
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      \rBuffer_reg[0]\ => UART_RX_INST_n_1,
      rFSM(2 downto 0) => rFSM(2 downto 0),
      \rTxByte_reg[7]\(7) => \rBuffer_reg_n_0_[95]\,
      \rTxByte_reg[7]\(6) => \rBuffer_reg_n_0_[94]\,
      \rTxByte_reg[7]\(5) => \rBuffer_reg_n_0_[93]\,
      \rTxByte_reg[7]\(4) => \rBuffer_reg_n_0_[92]\,
      \rTxByte_reg[7]\(3) => \rBuffer_reg_n_0_[91]\,
      \rTxByte_reg[7]\(2) => \rBuffer_reg_n_0_[90]\,
      \rTxByte_reg[7]\(1) => \rBuffer_reg_n_0_[89]\,
      \rTxByte_reg[7]\(0) => \rBuffer_reg_n_0_[88]\,
      \rTxData_Current_reg[7]_0\(7 downto 0) => rTxByte(7 downto 0),
      rTxStart_reg => rTxStart_reg_n_0
    );
\rBuffer[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[2]\,
      I1 => rFSM(2),
      O => rBuffer(10)
    );
\rBuffer[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[3]\,
      I1 => rFSM(2),
      O => rBuffer(11)
    );
\rBuffer[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[4]\,
      I1 => rFSM(2),
      O => rBuffer(12)
    );
\rBuffer[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[5]\,
      I1 => rFSM(2),
      O => rBuffer(13)
    );
\rBuffer[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[6]\,
      I1 => rFSM(2),
      O => rBuffer(14)
    );
\rBuffer[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[7]\,
      I1 => rFSM(2),
      O => rBuffer(15)
    );
\rBuffer[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[8]\,
      I1 => rFSM(2),
      O => rBuffer(16)
    );
\rBuffer[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[9]\,
      I1 => rFSM(2),
      O => rBuffer(17)
    );
\rBuffer[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[10]\,
      I1 => rFSM(2),
      O => rBuffer(18)
    );
\rBuffer[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[11]\,
      I1 => rFSM(2),
      O => rBuffer(19)
    );
\rBuffer[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[12]\,
      I1 => rFSM(2),
      O => rBuffer(20)
    );
\rBuffer[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[13]\,
      I1 => rFSM(2),
      O => rBuffer(21)
    );
\rBuffer[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[14]\,
      I1 => rFSM(2),
      O => rBuffer(22)
    );
\rBuffer[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[15]\,
      I1 => rFSM(2),
      O => rBuffer(23)
    );
\rBuffer[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[16]\,
      I1 => rFSM(2),
      O => rBuffer(24)
    );
\rBuffer[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[17]\,
      I1 => rFSM(2),
      O => rBuffer(25)
    );
\rBuffer[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[18]\,
      I1 => rFSM(2),
      O => rBuffer(26)
    );
\rBuffer[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[19]\,
      I1 => rFSM(2),
      O => rBuffer(27)
    );
\rBuffer[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[20]\,
      I1 => rFSM(2),
      O => rBuffer(28)
    );
\rBuffer[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[21]\,
      I1 => rFSM(2),
      O => rBuffer(29)
    );
\rBuffer[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[22]\,
      I1 => rFSM(2),
      O => rBuffer(30)
    );
\rBuffer[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[23]\,
      I1 => rFSM(2),
      O => rBuffer(31)
    );
\rBuffer[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[24]\,
      I1 => rFSM(2),
      O => rBuffer(32)
    );
\rBuffer[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[25]\,
      I1 => rFSM(2),
      O => rBuffer(33)
    );
\rBuffer[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[26]\,
      I1 => rFSM(2),
      O => rBuffer(34)
    );
\rBuffer[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[27]\,
      I1 => rFSM(2),
      O => rBuffer(35)
    );
\rBuffer[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[28]\,
      I1 => rFSM(2),
      O => rBuffer(36)
    );
\rBuffer[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[29]\,
      I1 => rFSM(2),
      O => rBuffer(37)
    );
\rBuffer[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[30]\,
      I1 => rFSM(2),
      O => rBuffer(38)
    );
\rBuffer[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[31]\,
      I1 => rFSM(2),
      O => rBuffer(39)
    );
\rBuffer[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[32]\,
      I1 => rFSM(2),
      O => rBuffer(40)
    );
\rBuffer[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[33]\,
      I1 => rFSM(2),
      O => rBuffer(41)
    );
\rBuffer[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[34]\,
      I1 => rFSM(2),
      O => rBuffer(42)
    );
\rBuffer[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[35]\,
      I1 => rFSM(2),
      O => rBuffer(43)
    );
\rBuffer[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[36]\,
      I1 => rFSM(2),
      O => rBuffer(44)
    );
\rBuffer[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[37]\,
      I1 => rFSM(2),
      O => rBuffer(45)
    );
\rBuffer[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[38]\,
      I1 => rFSM(2),
      O => rBuffer(46)
    );
\rBuffer[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[39]\,
      I1 => rFSM(2),
      O => rBuffer(47)
    );
\rBuffer[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[40]\,
      I1 => rFSM(2),
      O => rBuffer(48)
    );
\rBuffer[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[41]\,
      I1 => rFSM(2),
      O => rBuffer(49)
    );
\rBuffer[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[42]\,
      I1 => rFSM(2),
      O => rBuffer(50)
    );
\rBuffer[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[43]\,
      I1 => rFSM(2),
      O => rBuffer(51)
    );
\rBuffer[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[44]\,
      I1 => rFSM(2),
      O => rBuffer(52)
    );
\rBuffer[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[45]\,
      I1 => rFSM(2),
      O => rBuffer(53)
    );
\rBuffer[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[46]\,
      I1 => rFSM(2),
      O => rBuffer(54)
    );
\rBuffer[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[47]\,
      I1 => rFSM(2),
      O => rBuffer(55)
    );
\rBuffer[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[48]\,
      I1 => rFSM(2),
      O => rBuffer(56)
    );
\rBuffer[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[49]\,
      I1 => rFSM(2),
      O => rBuffer(57)
    );
\rBuffer[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[50]\,
      I1 => rFSM(2),
      O => rBuffer(58)
    );
\rBuffer[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[51]\,
      I1 => rFSM(2),
      O => rBuffer(59)
    );
\rBuffer[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[52]\,
      I1 => rFSM(2),
      O => rBuffer(60)
    );
\rBuffer[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[53]\,
      I1 => rFSM(2),
      O => rBuffer(61)
    );
\rBuffer[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[54]\,
      I1 => rFSM(2),
      O => rBuffer(62)
    );
\rBuffer[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[55]\,
      I1 => rFSM(2),
      O => rBuffer(63)
    );
\rBuffer[64]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[56]\,
      I1 => rFSM(2),
      O => rBuffer(64)
    );
\rBuffer[65]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[57]\,
      I1 => rFSM(2),
      O => rBuffer(65)
    );
\rBuffer[66]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[58]\,
      I1 => rFSM(2),
      O => rBuffer(66)
    );
\rBuffer[67]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[59]\,
      I1 => rFSM(2),
      O => rBuffer(67)
    );
\rBuffer[68]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[60]\,
      I1 => rFSM(2),
      O => rBuffer(68)
    );
\rBuffer[69]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[61]\,
      I1 => rFSM(2),
      O => rBuffer(69)
    );
\rBuffer[70]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[62]\,
      I1 => rFSM(2),
      O => rBuffer(70)
    );
\rBuffer[71]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[63]\,
      I1 => rFSM(2),
      O => rBuffer(71)
    );
\rBuffer[72]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[64]\,
      I1 => rFSM(2),
      O => rBuffer(72)
    );
\rBuffer[73]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[65]\,
      I1 => rFSM(2),
      O => rBuffer(73)
    );
\rBuffer[74]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[66]\,
      I1 => rFSM(2),
      O => rBuffer(74)
    );
\rBuffer[75]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[67]\,
      I1 => rFSM(2),
      O => rBuffer(75)
    );
\rBuffer[76]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[68]\,
      I1 => rFSM(2),
      O => rBuffer(76)
    );
\rBuffer[77]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[69]\,
      I1 => rFSM(2),
      O => rBuffer(77)
    );
\rBuffer[78]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[70]\,
      I1 => rFSM(2),
      O => rBuffer(78)
    );
\rBuffer[79]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[71]\,
      I1 => rFSM(2),
      O => rBuffer(79)
    );
\rBuffer[80]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[72]\,
      I1 => rFSM(2),
      O => rBuffer(80)
    );
\rBuffer[81]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[73]\,
      I1 => rFSM(2),
      O => rBuffer(81)
    );
\rBuffer[82]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[74]\,
      I1 => rFSM(2),
      O => rBuffer(82)
    );
\rBuffer[83]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[75]\,
      I1 => rFSM(2),
      O => rBuffer(83)
    );
\rBuffer[84]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[76]\,
      I1 => rFSM(2),
      O => rBuffer(84)
    );
\rBuffer[85]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[77]\,
      I1 => rFSM(2),
      O => rBuffer(85)
    );
\rBuffer[86]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[78]\,
      I1 => rFSM(2),
      O => rBuffer(86)
    );
\rBuffer[87]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[79]\,
      I1 => rFSM(2),
      O => rBuffer(87)
    );
\rBuffer[88]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[80]\,
      I1 => rFSM(2),
      O => rBuffer(88)
    );
\rBuffer[89]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[81]\,
      I1 => rFSM(2),
      O => rBuffer(89)
    );
\rBuffer[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[0]\,
      I1 => rFSM(2),
      O => rBuffer(8)
    );
\rBuffer[90]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[82]\,
      I1 => rFSM(2),
      O => rBuffer(90)
    );
\rBuffer[91]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[83]\,
      I1 => rFSM(2),
      O => rBuffer(91)
    );
\rBuffer[92]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[84]\,
      I1 => rFSM(2),
      O => rBuffer(92)
    );
\rBuffer[93]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[85]\,
      I1 => rFSM(2),
      O => rBuffer(93)
    );
\rBuffer[94]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[86]\,
      I1 => rFSM(2),
      O => rBuffer(94)
    );
\rBuffer[95]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[87]\,
      I1 => rFSM(2),
      O => rBuffer(95)
    );
\rBuffer[95]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rCnt_reg_n_0_[2]\,
      I1 => \rCnt_reg_n_0_[3]\,
      O => \rBuffer[95]_i_5_n_0\
    );
\rBuffer[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[1]\,
      I1 => rFSM(2),
      O => rBuffer(9)
    );
\rBuffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(0),
      Q => \rBuffer_reg_n_0_[0]\,
      R => iRst
    );
\rBuffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(10),
      Q => \rBuffer_reg_n_0_[10]\,
      R => iRst
    );
\rBuffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(11),
      Q => \rBuffer_reg_n_0_[11]\,
      R => iRst
    );
\rBuffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(12),
      Q => \rBuffer_reg_n_0_[12]\,
      R => iRst
    );
\rBuffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(13),
      Q => \rBuffer_reg_n_0_[13]\,
      R => iRst
    );
\rBuffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(14),
      Q => \rBuffer_reg_n_0_[14]\,
      R => iRst
    );
\rBuffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(15),
      Q => \rBuffer_reg_n_0_[15]\,
      R => iRst
    );
\rBuffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(16),
      Q => \rBuffer_reg_n_0_[16]\,
      R => iRst
    );
\rBuffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(17),
      Q => \rBuffer_reg_n_0_[17]\,
      R => iRst
    );
\rBuffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(18),
      Q => \rBuffer_reg_n_0_[18]\,
      R => iRst
    );
\rBuffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(19),
      Q => \rBuffer_reg_n_0_[19]\,
      R => iRst
    );
\rBuffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(1),
      Q => \rBuffer_reg_n_0_[1]\,
      R => iRst
    );
\rBuffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(20),
      Q => \rBuffer_reg_n_0_[20]\,
      R => iRst
    );
\rBuffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(21),
      Q => \rBuffer_reg_n_0_[21]\,
      R => iRst
    );
\rBuffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(22),
      Q => \rBuffer_reg_n_0_[22]\,
      R => iRst
    );
\rBuffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(23),
      Q => \rBuffer_reg_n_0_[23]\,
      R => iRst
    );
\rBuffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(24),
      Q => \rBuffer_reg_n_0_[24]\,
      R => iRst
    );
\rBuffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(25),
      Q => \rBuffer_reg_n_0_[25]\,
      R => iRst
    );
\rBuffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(26),
      Q => \rBuffer_reg_n_0_[26]\,
      R => iRst
    );
\rBuffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(27),
      Q => \rBuffer_reg_n_0_[27]\,
      R => iRst
    );
\rBuffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(28),
      Q => \rBuffer_reg_n_0_[28]\,
      R => iRst
    );
\rBuffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(29),
      Q => \rBuffer_reg_n_0_[29]\,
      R => iRst
    );
\rBuffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(2),
      Q => \rBuffer_reg_n_0_[2]\,
      R => iRst
    );
\rBuffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(30),
      Q => \rBuffer_reg_n_0_[30]\,
      R => iRst
    );
\rBuffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(31),
      Q => \rBuffer_reg_n_0_[31]\,
      R => iRst
    );
\rBuffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(32),
      Q => \rBuffer_reg_n_0_[32]\,
      R => iRst
    );
\rBuffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(33),
      Q => \rBuffer_reg_n_0_[33]\,
      R => iRst
    );
\rBuffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(34),
      Q => \rBuffer_reg_n_0_[34]\,
      R => iRst
    );
\rBuffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(35),
      Q => \rBuffer_reg_n_0_[35]\,
      R => iRst
    );
\rBuffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(36),
      Q => \rBuffer_reg_n_0_[36]\,
      R => iRst
    );
\rBuffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(37),
      Q => \rBuffer_reg_n_0_[37]\,
      R => iRst
    );
\rBuffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(38),
      Q => \rBuffer_reg_n_0_[38]\,
      R => iRst
    );
\rBuffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(39),
      Q => \rBuffer_reg_n_0_[39]\,
      R => iRst
    );
\rBuffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(3),
      Q => \rBuffer_reg_n_0_[3]\,
      R => iRst
    );
\rBuffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(40),
      Q => \rBuffer_reg_n_0_[40]\,
      R => iRst
    );
\rBuffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(41),
      Q => \rBuffer_reg_n_0_[41]\,
      R => iRst
    );
\rBuffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(42),
      Q => \rBuffer_reg_n_0_[42]\,
      R => iRst
    );
\rBuffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(43),
      Q => \rBuffer_reg_n_0_[43]\,
      R => iRst
    );
\rBuffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(44),
      Q => \rBuffer_reg_n_0_[44]\,
      R => iRst
    );
\rBuffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(45),
      Q => \rBuffer_reg_n_0_[45]\,
      R => iRst
    );
\rBuffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(46),
      Q => \rBuffer_reg_n_0_[46]\,
      R => iRst
    );
\rBuffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(47),
      Q => \rBuffer_reg_n_0_[47]\,
      R => iRst
    );
\rBuffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(48),
      Q => \rBuffer_reg_n_0_[48]\,
      R => iRst
    );
\rBuffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(49),
      Q => \rBuffer_reg_n_0_[49]\,
      R => iRst
    );
\rBuffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(4),
      Q => \rBuffer_reg_n_0_[4]\,
      R => iRst
    );
\rBuffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(50),
      Q => \rBuffer_reg_n_0_[50]\,
      R => iRst
    );
\rBuffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(51),
      Q => \rBuffer_reg_n_0_[51]\,
      R => iRst
    );
\rBuffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(52),
      Q => \rBuffer_reg_n_0_[52]\,
      R => iRst
    );
\rBuffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(53),
      Q => \rBuffer_reg_n_0_[53]\,
      R => iRst
    );
\rBuffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(54),
      Q => \rBuffer_reg_n_0_[54]\,
      R => iRst
    );
\rBuffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(55),
      Q => \rBuffer_reg_n_0_[55]\,
      R => iRst
    );
\rBuffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(56),
      Q => \rBuffer_reg_n_0_[56]\,
      R => iRst
    );
\rBuffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(57),
      Q => \rBuffer_reg_n_0_[57]\,
      R => iRst
    );
\rBuffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(58),
      Q => \rBuffer_reg_n_0_[58]\,
      R => iRst
    );
\rBuffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(59),
      Q => \rBuffer_reg_n_0_[59]\,
      R => iRst
    );
\rBuffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(5),
      Q => \rBuffer_reg_n_0_[5]\,
      R => iRst
    );
\rBuffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(60),
      Q => \rBuffer_reg_n_0_[60]\,
      R => iRst
    );
\rBuffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(61),
      Q => \rBuffer_reg_n_0_[61]\,
      R => iRst
    );
\rBuffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(62),
      Q => \rBuffer_reg_n_0_[62]\,
      R => iRst
    );
\rBuffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(63),
      Q => \rBuffer_reg_n_0_[63]\,
      R => iRst
    );
\rBuffer_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(64),
      Q => \rBuffer_reg_n_0_[64]\,
      R => iRst
    );
\rBuffer_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(65),
      Q => \rBuffer_reg_n_0_[65]\,
      R => iRst
    );
\rBuffer_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(66),
      Q => \rBuffer_reg_n_0_[66]\,
      R => iRst
    );
\rBuffer_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(67),
      Q => \rBuffer_reg_n_0_[67]\,
      R => iRst
    );
\rBuffer_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(68),
      Q => \rBuffer_reg_n_0_[68]\,
      R => iRst
    );
\rBuffer_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(69),
      Q => \rBuffer_reg_n_0_[69]\,
      R => iRst
    );
\rBuffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(6),
      Q => \rBuffer_reg_n_0_[6]\,
      R => iRst
    );
\rBuffer_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(70),
      Q => \rBuffer_reg_n_0_[70]\,
      R => iRst
    );
\rBuffer_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(71),
      Q => \rBuffer_reg_n_0_[71]\,
      R => iRst
    );
\rBuffer_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(72),
      Q => \rBuffer_reg_n_0_[72]\,
      R => iRst
    );
\rBuffer_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(73),
      Q => \rBuffer_reg_n_0_[73]\,
      R => iRst
    );
\rBuffer_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(74),
      Q => \rBuffer_reg_n_0_[74]\,
      R => iRst
    );
\rBuffer_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(75),
      Q => \rBuffer_reg_n_0_[75]\,
      R => iRst
    );
\rBuffer_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(76),
      Q => \rBuffer_reg_n_0_[76]\,
      R => iRst
    );
\rBuffer_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(77),
      Q => \rBuffer_reg_n_0_[77]\,
      R => iRst
    );
\rBuffer_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(78),
      Q => \rBuffer_reg_n_0_[78]\,
      R => iRst
    );
\rBuffer_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(79),
      Q => \rBuffer_reg_n_0_[79]\,
      R => iRst
    );
\rBuffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(7),
      Q => \rBuffer_reg_n_0_[7]\,
      R => iRst
    );
\rBuffer_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(80),
      Q => \rBuffer_reg_n_0_[80]\,
      R => iRst
    );
\rBuffer_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(81),
      Q => \rBuffer_reg_n_0_[81]\,
      R => iRst
    );
\rBuffer_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(82),
      Q => \rBuffer_reg_n_0_[82]\,
      R => iRst
    );
\rBuffer_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(83),
      Q => \rBuffer_reg_n_0_[83]\,
      R => iRst
    );
\rBuffer_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(84),
      Q => \rBuffer_reg_n_0_[84]\,
      R => iRst
    );
\rBuffer_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(85),
      Q => \rBuffer_reg_n_0_[85]\,
      R => iRst
    );
\rBuffer_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(86),
      Q => \rBuffer_reg_n_0_[86]\,
      R => iRst
    );
\rBuffer_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(87),
      Q => \rBuffer_reg_n_0_[87]\,
      R => iRst
    );
\rBuffer_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(88),
      Q => \rBuffer_reg_n_0_[88]\,
      R => iRst
    );
\rBuffer_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(89),
      Q => \rBuffer_reg_n_0_[89]\,
      R => iRst
    );
\rBuffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(8),
      Q => \rBuffer_reg_n_0_[8]\,
      R => iRst
    );
\rBuffer_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(90),
      Q => \rBuffer_reg_n_0_[90]\,
      R => iRst
    );
\rBuffer_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(91),
      Q => \rBuffer_reg_n_0_[91]\,
      R => iRst
    );
\rBuffer_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(92),
      Q => \rBuffer_reg_n_0_[92]\,
      R => iRst
    );
\rBuffer_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(93),
      Q => \rBuffer_reg_n_0_[93]\,
      R => iRst
    );
\rBuffer_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(94),
      Q => \rBuffer_reg_n_0_[94]\,
      R => iRst
    );
\rBuffer_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(95),
      Q => \rBuffer_reg_n_0_[95]\,
      R => iRst
    );
\rBuffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_1,
      D => rBuffer(9),
      Q => \rBuffer_reg_n_0_[9]\,
      R => iRst
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_RX_INST_n_6,
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_RX_INST_n_5,
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_RX_INST_n_4,
      Q => \rCnt_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_RX_INST_n_3,
      Q => \rCnt_reg_n_0_[3]\,
      R => iRst
    );
\rTxByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => p_0_in(0),
      Q => rTxByte(0),
      R => iRst
    );
\rTxByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => p_0_in(1),
      Q => rTxByte(1),
      R => iRst
    );
\rTxByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => p_0_in(2),
      Q => rTxByte(2),
      R => iRst
    );
\rTxByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => p_0_in(3),
      Q => rTxByte(3),
      R => iRst
    );
\rTxByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => p_0_in(4),
      Q => rTxByte(4),
      R => iRst
    );
\rTxByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => p_0_in(5),
      Q => rTxByte(5),
      R => iRst
    );
\rTxByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => p_0_in(6),
      Q => rTxByte(6),
      R => iRst
    );
\rTxByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => p_0_in(7),
      Q => rTxByte(7),
      R => iRst
    );
rTxStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_15,
      Q => rTxStart_reg_n_0,
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_top_0_0 : entity is "design_1_uart_top_0_0,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uart_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uart_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uart_top_0_0 : entity is "uart_top,Vivado 2020.1";
end design_1_uart_top_0_0;

architecture STRUCTURE of design_1_uart_top_0_0 is
begin
inst: entity work.design_1_uart_top_0_0_uart_top
     port map (
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      oTx => oTx
    );
end STRUCTURE;
