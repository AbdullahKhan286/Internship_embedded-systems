module Controller_16bit(
  input wire clk,
  input wire reset,
  output reg enable
);

  always @(posedge clk or posedge reset) begin
    if (reset)
      enable <= 0;
    else
      enable <= 1;
  end

endmodule
