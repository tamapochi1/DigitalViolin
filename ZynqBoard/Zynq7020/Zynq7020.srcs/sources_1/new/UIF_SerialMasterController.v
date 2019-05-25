`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 20:09:58
// Design Name: 
// Module Name: UIF_SerialMasterController
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


module UIF_SerialMasterController
#(
    parameter preScale = 49
)(
    input nReset,
    input sysClk,
    
    output UIF_Master_H_SCK,
    input UIF_Master_H_RXD,
    output UIF_Master_H_TXD,
    output SPI_Master_CSn,
    
    input start,
    input [11:0] txFifoCount,
    
    output internal_S_SCK,
    input internal_S_RXD,
    output internal_S_TXD,
    
    output busy
    );

assign UIF_Master_H_RXD = internal_S_TXD;
assign UIF_Master_H_TXD = internal_S_RXD;

reg [9:0] preScaler;
reg spiClk;
reg sclk;
reg cs;

assign UIF_Master_H_SCK = sclk;
assign internal_S_SCK = sclk;
assign SPI_Master_CSn = ~cs;
assign busy = cs;

wire spiClk_posedge;
assign spiClk_posedge = (preScaler == preScale) & ~spiClk;

reg [11:0] byteCounter;
reg [3:0] bitCounter;
reg ending;


always @(negedge sysClk)
begin
    if(~nReset)
    begin
        preScaler <= 10'h000;
    end
    else
    begin
        if(preScaler < preScale)
        begin
            preScaler <= preScaler + 10'h001;
        end
        else
        begin
            preScaler <= 10'h000;
        end
    end
end

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        spiClk <= 1'b0;
    end
    else
    begin
        if(preScaler == preScale)
        begin
            spiClk <= ~spiClk;
        end
        else
        begin
            spiClk <= spiClk;
        end
    end
end

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        sclk <= 1'b1;
    end
    else
    begin
        if(cs)
        begin
            if(preScaler == preScale && ~ending)
            begin
                sclk <= ~spiClk;
            end
            else
            begin
                sclk <= sclk;
            end
        end
        else
        begin
            sclk <= 1'b1;
        end
    end
end

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        byteCounter <= 12'h000;
    end
    else
    begin
        if(start && ~busy)
        begin
            byteCounter <= txFifoCount;
        end
        else if(spiClk_posedge)
        begin
            if(byteCounter > 12'h000 && bitCounter == 3'h7)
            begin
                byteCounter <= byteCounter - 12'h001;
            end
            else
            begin
                byteCounter <= byteCounter;
            end
        end
        else
        begin
            byteCounter <= byteCounter;
        end
    end
end

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        cs <= 1'b0;
        ending <= 1'b0;
    end
    else
    begin
        if(spiClk_posedge)
        begin
            if(byteCounter != 12'h000)
            begin
                cs <= 1'b1;
                ending <= 1'b0;
            end
            else if(~ending)
            begin
                cs <= cs;
                ending <= 1'b1;
            end
            else
            begin
                cs <= 1'b0;
                ending <= 1'b0;
            end
        end
        else
        begin
            cs <= cs;
            ending <= ending;
        end
    end
end

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        bitCounter <= 4'h0;
    end
    else
    begin
        if(byteCounter != 12'h000)
        begin
            if(spiClk_posedge)
            begin
                if(bitCounter < 4'h8)
                begin
                    bitCounter <= bitCounter + 4'h1;
                end
                else
                begin
                    bitCounter <= 4'h1;
                end
            end
            else
            begin
                bitCounter <= bitCounter;
            end
        end
        else
        begin
            bitCounter <= 4'h0;
        end
    end
end

endmodule
