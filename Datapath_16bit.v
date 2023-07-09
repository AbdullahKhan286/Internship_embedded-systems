module Datapath_16bit(
  input wire clk,
  input wire reset,
  input wire enable,
  output reg [15:0] count
);

  always @(posedge clk or posedge reset) begin
    if (reset)
      count <= 0;
    else if (enable)
      count <= count + 1;
  end

endmodule
