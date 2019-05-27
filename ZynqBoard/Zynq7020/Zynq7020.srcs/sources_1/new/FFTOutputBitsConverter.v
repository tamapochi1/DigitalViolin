
module FFTOutputBitsConverter
#(
    parameter FFT_SIZE = 1024
)(
    input nReset,
    input clk,
    
    output [31:0] bram_addr,
    output bram_clk,
    output [31:0] bram_wddata,
    output bram_en,
    output bram_rst,
    output bram_we,
    
    output event_fft_complete,
    
    input[63:0] s_axis_data_tdata,
    output s_axis_data_tready,
    input s_axis_data_tvalid
    );

reg [15:0] byteCounter;
reg started;
reg complete;
    
wire [11:0] ch0_re = s_axis_data_tdata[11:0];
wire [11:0] ch0_im = s_axis_data_tdata[27:16];
wire [11:0] ch1_re = s_axis_data_tdata[43:32];
wire [11:0] ch1_im = s_axis_data_tdata[59:48];

wire [11:0] ch0_re_abs = ch0_re[11] ? ~ch0_re[11:0] + 11'h001 : ch0_re[11:0];
wire [11:0] ch0_im_abs = ch0_im[11] ? ~ch0_im[11:0] + 11'h001 : ch0_im[11:0];
wire [11:0] ch1_re_abs = ch1_re[11] ? ~ch1_re[11:0] + 11'h001 : ch1_re[11:0];
wire [11:0] ch1_im_abs = ch1_im[11] ? ~ch1_im[11:0] + 11'h001 : ch1_im[11:0];

assign bram_addr = {14'd0,byteCounter,2'b00};
assign bram_clk = clk;
assign bram_wddata = {4'h0, ch1_re_abs + ch1_im_abs, 4'h0, ch0_re_abs + ch0_im_abs};
assign bram_en = nReset;
assign bram_rst = ~nReset;
assign bram_we = s_axis_data_tvalid;

assign s_axis_data_tready = nReset;

assign event_fft_complete = complete;

always @(posedge clk)
begin
    if(~nReset)
    begin
        byteCounter <= 16'h0000;
    end
    else
    begin
        if(s_axis_data_tvalid)
        begin
            if(byteCounter < (FFT_SIZE - 16'h0001))
            begin
                byteCounter <= byteCounter + 16'h0001;
            end
            else
            begin
                byteCounter <= 16'h0000;
            end
        end
        else
        begin
            byteCounter <= byteCounter;
        end
    end
end

always @(posedge clk)
begin
    if(~nReset)
    begin
        started <= 1'b0;
    end
    else
    begin
        if(s_axis_data_tvalid)
        begin
            started <= 1'b1;
        end
        else if(complete)
        begin
            started <= 1'b0;
        end
        else
        begin
            started <= started;
        end
    end
end

always @(posedge clk)
begin
    if(~nReset)
    begin
        complete <= 1'b0;
    end
    else
    begin
        if(started && ~complete && byteCounter == (FFT_SIZE - 16'h0001))
        begin
            complete <= 1'b1;
        end
        else
        begin
            complete <= 1'b0;
        end
    end
end

endmodule
