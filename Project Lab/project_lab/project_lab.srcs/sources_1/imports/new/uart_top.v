`timescale 1ns / 1ps

module uart_top #(
    parameter   OPERAND_WIDTH   =   512,
    parameter   ADDER_WIDTH     =   16,
    parameter   NBYTES          =   OPERAND_WIDTH/8,
    // values for the UART (in case we want to change them)
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );
  


  
  // State definition  
  localparam s_IDLE         = 3'b000; //0
  localparam s_WAIT_RA      = 3'b001; //1
  localparam s_WAIT_RB      = 3'b010; //2
  localparam s_MP_ADD       = 3'b011; //3
  localparam s_TX           = 3'b100; //4
  localparam s_WAIT_TX      = 3'b101; //5
  localparam s_DONE         = 3'b110; //6
  
   
  // Declare all variables needed for the finite state machine 
  // -> the FSM state
  reg [2:0]   rFSM;  
  
  // Connection to UART TX (inputs = registers, outputs = wires)
  reg         rTxStart;
  reg [7:0]   rTxByte;
  
  wire        wTxBusy;
  wire        wTxDone;
  
 // Buffer to exchange data between Pynq-Z2 and laptop
  reg [NBYTES*8-1:0] rA;
  reg [NBYTES*8-1:0] rB;
  reg [(NBYTES+1)*8-1:0] rRes;
  
  reg [$clog2(NBYTES):0] rCnt; // counting n-th byte + one byte including carry
  
  // Connection to UART RX (inputs = registers, outputs = wires)
  
  wire [7:0]  wRxByte;
  wire        wRxDone;
  
  // Connection to MP_ADDER (input = registers, output = wires)
  reg                    rStart; // input register to indicate that rA adn rB has been filled
  wire [OPERAND_WIDTH:0] wRes;
  wire                   wDone;
      
  uart_tx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_TX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(oTx),
     .oTxBusy(wTxBusy),
     .oTxDone(wTxDone)
     );
  
  // instantiate module under test
  uart_rx #( .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) ) 
  UART_RX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iRxSerial(iRx),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );
 // instantiate mp_adder
 mp_adder #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH), .N_ITERATIONS(OPERAND_WIDTH / ADDER_WIDTH))
 MP_ADDER_INST
     (.iClk(iClk),
     .iRst(iRst),
     .iStart(rStart),
     .iOpA(rA),
     .iOpB(rB),
     .oRes(wRes),
     .oDone(wDone)
     );
     
  always @(posedge iClk)
  begin
  
  // reset all registers upon reset
  if (iRst == 1 ) 
    begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rTxByte <= 0;
      rCnt <= 0;
      rStart <= 0;
      rA <= 0;
      rB <= 0;
      rRes <= 0;
    end 
  else 
    begin
      case (rFSM)
   
        s_IDLE :
          begin
            rFSM <= s_WAIT_RA;
          end      
        
        // received NBYTES for rA
        s_WAIT_RA :
          begin
            if(rCnt < NBYTES)
            begin
                if(wRxDone)
                begin
                    rA <= {rA[NBYTES*8-9:0], wRxByte};                                                                   
                    rCnt <= rCnt+1;
                    rFSM <= s_WAIT_RA;
                end
            
                else
                begin
                    rA <= rA;
                    rCnt <= rCnt;
                    rFSM <= s_WAIT_RA;  
                end
            end
          
            else //rCnt == NBYTES
            begin
                rA <= rA;
                rCnt <= 0;                                       
                rFSM <= s_WAIT_RB;
            end
          end
        
        s_WAIT_RB :
          begin    
            if(rCnt < NBYTES)
            begin
                if(wRxDone)
                begin
                    rB <= {rB[NBYTES*8-9:0], wRxByte};                                                                    
                    rCnt <= rCnt+1;
                    rFSM <= s_WAIT_RB;
                end
            
                else
                begin
                    rB <= rB;
                    rCnt <= rCnt;
                    rFSM <= s_WAIT_RB;  
                end
            end
          
            else //rCnt == NBYTES
            begin
                rB <= rB;
                rCnt <= 0;                                       
                rFSM <= s_MP_ADD;
                rStart <= 1;
            end
          end
          
        // state allowing mp_adder to calculate
        // only extract result 512 bit from mp_adder when wDone is high
        s_MP_ADD :
          begin
            rStart <= 0;
            if (wDone) begin                                        
                rRes <= {7'b0, wRes}; // WE TAKE THE RESULT OF THE ADDITION + CARRY AND PLACE IT IN THE RES REGISTER. THEN WE CONCATENATE
                                    // 7 0s TO THE LEFT TO FILL UP THE "CARRY BYTE"   
                rFSM <= s_TX;                                         // go to TX state to send result to PC
            end else begin //not wDone yet
                rFSM <= s_MP_ADD;
                rRes <= rRes;
            end
          end
                       
        s_TX :                                                     
          begin
            if ( (rCnt <= NBYTES) && (wTxBusy == 0) )                
              begin                                                   
                rFSM <= s_WAIT_TX;                                    
                rTxStart <= 1; 
                rTxByte = rRes[(NBYTES+1)*8-1:(NBYTES+1)*8-8];   // we send the uppermost byte
                rRes = {rRes[NBYTES*8-1:0] , 8'b0000_0000};    // we shift from right to left
                                                            
                rCnt <= rCnt + 1;
              end 
            else 
              begin                                                   
                rFSM <= s_DONE;                                       
                rTxStart <= 0;                                        
                rTxByte <= rTxByte;
                rRes <= rRes;
                rCnt <= 0;
              end
          end 
            
        s_WAIT_TX :
          begin
            if (wTxDone) begin                                        
              rFSM <= s_TX;                                           
            end else begin
              rFSM <= s_WAIT_TX;                                      
              rTxStart <= 0;                                          
            end
          end 
          
        s_DONE :
          begin
            rFSM <= s_IDLE;                                           
          end 

        default :
          rFSM <= s_IDLE;
             
      endcase
      end
    end       
    
endmodule