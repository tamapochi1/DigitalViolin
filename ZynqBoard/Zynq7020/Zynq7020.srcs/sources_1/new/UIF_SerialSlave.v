`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/18 10:35:57
// Design Name: 
// Module Name: UIF_SerialSlave
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UIF_SerialSlave(
    input nReset,
    input sysClk,
    input UIF_Slave_S_SCK,
    output UIF_Slave_S_RXD,
    input UIF_Slave_S_TXD,
    
    output [7:0] m_axis_st_tdata,
    input m_axis_st_tready,
    output m_axis_st_tvalid,
    
    input [7:0] s_axis_sr_tdata,
    output s_axis_sr_tready,
    input s_axis_sr_tvalid
    );
    
    
reg [1:0] SCKSync;
reg [1:0] RXDSync;
wire SCKInt;
wire RXDInt;
assign SCKInt = SCKSync[0];
assign RXDInt = RXDSync[0];

reg [1:0] SCKEdgeBuffer;
wire SCKRiseEdge = (SCKEdgeBuffer == 2'b10);
wire SCKFallEdge = (SCKEdgeBuffer == 2'b01);

reg [7:0] RXDBuffer;
reg [2:0] RXDBufferCount;
reg RXDBufferValid;

reg [7:0] TXDBuffer;
reg [2:0] TXDBufferCount;
reg TXDBufferReady;

reg [7:0] timeOutCounter;

always @(negedge sysClk)
begin
    SCKSync <= {UIF_Slave_S_SCK, SCKSync[1]};
    RXDSync <= {UIF_Slave_S_TXD, RXDSync[1]};
end

always @(negedge sysClk)
begin
    SCKEdgeBuffer <= {SCKInt, SCKEdgeBuffer[1]};  
end

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        timeOutCounter <= 8'h00;
    end
    else
    begin
        if(timeOutCounter < 8'hFF && ~SCKRiseEdge && ~SCKFallEdge)
        begin
            timeOutCounter <= timeOutCounter + 8'h01;
        end
        else
        begin
            timeOutCounter <= 8'h00;
        end
    end
end

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        RXDBuffer <= 8'h00;
        RXDBufferCount <= 3'h0;
        RXDBufferValid <= 1'b0;
    end
    else
    begin
        if(SCKRiseEdge)
        begin
            RXDBuffer <= {RXDInt, RXDBuffer[7:1]};
            
            if(RXDBufferCount < 3'h7)
            begin
                RXDBufferCount <= RXDBufferCount + 3'h1;
                RXDBufferValid <= 1'b0;
            end
            else
            begin
                RXDBufferCount <= 3'h0;
                RXDBufferValid <= 1'b1;
            end
        end
        else
        begin
            RXDBufferValid <= 1'b0;
            RXDBuffer <= RXDBuffer;
            
            if(timeOutCounter > 8'h7F)
            begin
                RXDBufferCount <= 3'h0;
            end
            else
            begin
                RXDBufferCount <= RXDBufferCount;
            end
        end
    end
end

assign m_axis_st_tdata = RXDBuffer;
assign m_axis_st_tvalid = m_axis_st_tready & RXDBufferValid;



always @(negedge sysClk)
begin
    if(~nReset)
    begin
        TXDBuffer <= 8'h00;
        TXDBufferCount <= 3'h7;
        TXDBufferReady <= 1'b0;
    end
    else
    begin
        if(SCKFallEdge)
        begin
            if(TXDBufferCount < 3'h7)
            begin
                TXDBufferCount <= TXDBufferCount + 3'h1;
                TXDBufferReady <= 1'b0;
                TXDBuffer <= {TXDBuffer[7], TXDBuffer[7:1]};
            end
            else
            begin
                TXDBufferCount <= 3'h0;
                TXDBufferReady <= s_axis_sr_tvalid;
                TXDBuffer <= s_axis_sr_tdata;
            end
        end
        else
        begin
            TXDBufferReady <= 1'b0;
            TXDBuffer <= TXDBuffer;
            
            if(timeOutCounter > 8'h7F)
            begin
                TXDBufferCount <= 3'h7;
            end
            else
            begin
                TXDBufferCount <= TXDBufferCount;
            end
        end
    end
end

assign s_axis_sr_tready = TXDBufferReady;
assign UIF_Slave_S_RXD = TXDBuffer[0];

endmodule
