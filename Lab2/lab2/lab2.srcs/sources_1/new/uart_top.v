module uart_top #(
    parameter   NBYTES        = 12,
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );
  
  
  
  // State definition  
  localparam s_IDLE         = 3'b000;
  localparam s_WAIT_RX      = 3'b001;
  localparam s_TX           = 3'b010;
  localparam s_WAIT_TX      = 3'b011;
  localparam s_DONE         = 3'b100;
   
  // Declare all variables needed for the finite state machine 
  reg [2:0]   rFSM;  
  reg         rTxStart;
  reg [7:0]   rTxByte;
  wire        wTxBusy;
  wire        wTxDone;
  
  // Buffer to exchange data between Pynq-Z2 and laptop
  reg [NBYTES*8-1:0] rBuffer;
  reg [$clog2(NBYTES):0] rCnt;
  
  // UART Receiver Instance (assuming you have already the UART RX module)
  wire [7:0]  wRxByte;
  wire        wRxDone;
  
  // UART Transmitter Instance
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

  
  
  uart_rx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_RX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iRxSerial(iRx),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );
  
  
  
  always @(posedge iClk)
  begin
    if (iRst == 1 ) 
      begin
        rFSM <= s_IDLE;
        rTxStart <= 0;
        rCnt <= 0;
        rTxByte <= 0;
        rBuffer <= 0;
      end 
    else 
      begin
        case (rFSM)
   
          s_IDLE :
            begin
              rFSM <= s_WAIT_RX;
            end
          
          s_WAIT_RX :
            begin
              if (wRxDone) 
              begin
                if(rCnt < NBYTES)
                begin
                    rBuffer <= {rBuffer[NBYTES*8-9:0], wRxByte};  // Shift in the received byte
                    rCnt <= rCnt + 1;
                    rFSM <= s_WAIT_RX;
                end
                if (rCnt == NBYTES) 
                begin
                    rFSM <= s_TX;  // Proceed to TX when all bytes are received
                    rCnt <= 0;
                end
              end
              else
              begin
                rFSM <= s_WAIT_RX;
                if(rCnt == NBYTES)
                begin
                    rCnt <= 0;
                    rFSM <= s_TX;
                end
              end
            end
             
          s_TX :
            begin
              if (rCnt < NBYTES && wTxBusy == 0) 
                begin
                  rFSM <= s_WAIT_TX;
                  rTxStart <= 1; 
                  rTxByte <= rBuffer[NBYTES*8-1:NBYTES*8-8];            // Send the uppermost byte
                  rBuffer <= {rBuffer[NBYTES*8-9:0], 8'b0000_0000};    // Shift data in the buffer to the left
                  rCnt <= rCnt + 1;
                end 
              else 
                begin
                  rFSM <= s_DONE;
                  rCnt <= 0;
                  rTxStart <= 0;
                  rTxByte <= 0;
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
              rFSM <= s_IDLE;  // Return to idle after completing the process
              rCnt <= 0;
              rBuffer <= 0;
            end 

          default :
            rFSM <= s_IDLE;
        endcase
      end
  end
endmodule
