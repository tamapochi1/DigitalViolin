
module FFTOutputBitsConverter(
    input nReset,
    input clk,
    
    output [31:0] bram_addr,
    output bram_clk,
    output [127:0] bram_wddata,
    output bram_en,
    output bram_rst,
    output bram_we,
    
    output event_fft_complete,
    
    input[255:0] s_axis_data_tdata,
    output s_axis_data_tready,
    input s_axis_data_tvalid
    );

reg [9:0] byteCounter;
reg started;
reg complete;
    
wire [11:0] ch0_re = s_axis_data_tdata[11:0];
wire [11:0] ch0_im = s_axis_data_tdata[27:16];
wire [11:0] ch1_re = s_axis_data_tdata[43:32];
wire [11:0] ch1_im = s_axis_data_tdata[59:48];
wire [11:0] ch2_re = s_axis_data_tdata[75:64];
wire [11:0] ch2_im = s_axis_data_tdata[91:80];
wire [11:0] ch3_re = s_axis_data_tdata[107:96];
wire [11:0] ch3_im = s_axis_data_tdata[123:112];
wire [11:0] ch4_re = s_axis_data_tdata[139:128];
wire [11:0] ch4_im = s_axis_data_tdata[155:144];
wire [11:0] ch5_re = s_axis_data_tdata[171:160];
wire [11:0] ch5_im = s_axis_data_tdata[187:176];
wire [11:0] ch6_re = s_axis_data_tdata[203:192];
wire [11:0] ch6_im = s_axis_data_tdata[219:208];
wire [11:0] ch7_re = s_axis_data_tdata[235:224];
wire [11:0] ch7_im = s_axis_data_tdata[251:240];

wire [11:0] ch0_re_abs = ch0_re[11] ? ~ch0_re + 11'h001 : ch0_re;
wire [11:0] ch0_im_abs = ch0_im[11] ? ~ch0_im + 11'h001 : ch0_im;
wire [11:0] ch1_re_abs = ch1_re[11] ? ~ch1_re + 11'h001 : ch1_re;
wire [11:0] ch1_im_abs = ch1_im[11] ? ~ch1_im + 11'h001 : ch1_im;
wire [11:0] ch2_re_abs = ch2_re[11] ? ~ch2_re + 11'h001 : ch2_re;
wire [11:0] ch2_im_abs = ch2_im[11] ? ~ch2_im + 11'h001 : ch2_im;
wire [11:0] ch3_re_abs = ch3_re[11] ? ~ch3_re + 11'h001 : ch3_re;
wire [11:0] ch3_im_abs = ch3_im[11] ? ~ch3_im + 11'h001 : ch3_im;
wire [11:0] ch4_re_abs = ch4_re[11] ? ~ch4_re + 11'h001 : ch4_re;
wire [11:0] ch4_im_abs = ch4_im[11] ? ~ch4_im + 11'h001 : ch4_im;
wire [11:0] ch5_re_abs = ch5_re[11] ? ~ch5_re + 11'h001 : ch5_re;
wire [11:0] ch5_im_abs = ch5_im[11] ? ~ch5_im + 11'h001 : ch5_im;
wire [11:0] ch6_re_abs = ch6_re[11] ? ~ch6_re + 11'h001 : ch6_re;
wire [11:0] ch6_im_abs = ch6_im[11] ? ~ch6_im + 11'h001 : ch6_im;
wire [11:0] ch7_re_abs = ch7_re[11] ? ~ch7_re + 11'h001 : ch7_re;
wire [11:0] ch7_im_abs = ch7_im[11] ? ~ch7_im + 11'h001 : ch7_im;

assign bram_addr = {18'd0, byteCounter, 4'd0};
assign bram_clk = clk;
assign bram_wddata[15:0] = {4'h0, ch0_re_abs + ch0_im_abs};
assign bram_wddata[31:16] = {4'h0, ch1_re_abs + ch1_im_abs};
assign bram_wddata[47:32] = {4'h0, ch2_re_abs + ch2_im_abs};
assign bram_wddata[63:48] = {4'h0, ch3_re_abs + ch3_im_abs};
assign bram_wddata[79:64] = {4'h0, ch4_re_abs + ch4_im_abs};
assign bram_wddata[95:80] = {4'h0, ch5_re_abs + ch5_im_abs};
assign bram_wddata[111:96] = {4'h0, ch6_re_abs + ch6_im_abs};
assign bram_wddata[127:112] = {4'h0, ch7_re_abs + ch7_im_abs};
assign bram_en = nReset;
assign bram_rst = ~nReset;
assign bram_we = s_axis_data_tvalid;

assign s_axis_data_tready = nReset;

assign event_fft_complete = complete;

always @(posedge clk)
begin
    if(~nReset)
    begin
        byteCounter <= 10'h000;
    end
    else
    begin
        if(s_axis_data_tvalid)
        begin
            if(byteCounter == 10'd255)
            begin
                byteCounter <= 10'h000;
            end
            else
            begin
                byteCounter <= byteCounter + 10'h001;
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
        if(started && ~complete && byteCounter == 10'd255)
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
