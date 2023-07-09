module Top_Module(
  input wire clk,
  input wire reset,
  output wire [15:0] count
);

  wire enable;

  // Instantiate the controller module
  Controller_16bit dut_ctrl (
    .clk(clk),
    .reset(reset),
    .enable(enable)
  );

  // Instantiate the datapath module
  Datapath_16bit dut_dp (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .count(count)
  );

endmodule
