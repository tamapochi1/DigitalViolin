
module FFTOutputBitsConverter(
    output [31:0] m_axis_data_tdata,
    input m_axis_data_tready,
    output m_axis_data_tvalid,
    
    input[63:0] s_axis_data_tdata,
    output s_axis_data_tready,
    input s_axis_data_tvalid
    );
    
wire [11:0] ch0_re = s_axis_data_tdata[11:0];
wire [11:0] ch0_im = s_axis_data_tdata[27:16];
wire [11:0] ch1_re = s_axis_data_tdata[43:32];
wire [11:0] ch1_im = s_axis_data_tdata[59:48];

wire [11:0] ch0_re_abs = ch0_re[11] ? ~ch0_re[11:0] + 11'h001 : ch0_re[11:0];
wire [11:0] ch0_im_abs = ch0_im[11] ? ~ch0_im[11:0] + 11'h001 : ch0_im[11:0];
wire [11:0] ch1_re_abs = ch1_re[11] ? ~ch1_re[11:0] + 11'h001 : ch1_re[11:0];
wire [11:0] ch1_im_abs = ch1_im[11] ? ~ch1_im[11:0] + 11'h001 : ch1_im[11:0];

assign m_axis_data_tdata[15:0] = {4'h0, ch0_re_abs + ch0_im_abs};
assign m_axis_data_tdata[31:16] = {4'h0, ch1_re_abs + ch1_im_abs};
assign m_axis_data_tready = s_axis_data_tready;
assign m_axis_data_tvalid = s_axis_data_tvalid;

endmodule
