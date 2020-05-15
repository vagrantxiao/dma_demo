module ip2DMA(
  input [127:0] dout,
  input valid,
  output ready,
  input [15:0] keep,
  input last,
  input m_axis_mm2s_aclk,
  input reset,

  output [127:0] m_axis_mm2s_tdata,
  output [15:0]  m_axis_mm2s_tkeep,
  output         m_axis_mm2s_tlast,
  input          m_axis_mm2s_tready,
  output         m_axis_mm2s_tvalid
  );

assign m_axis_mm2s_tdata  = dout;
assign m_axis_mm2s_tkeep  = keep;
assign m_axis_mm2s_tlast  = last;
assign ready= m_axis_mm2s_tready;
assign m_axis_mm2s_tvalid = valid;


endmodule
