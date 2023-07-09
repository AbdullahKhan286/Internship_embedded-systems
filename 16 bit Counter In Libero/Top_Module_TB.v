`timescale 1ns / 1ps

module Top_Module_TB;
  reg clk;
  reg reset;
  wire [15:0] count;

  // Instantiate the top module
  Top_Module dut (
    .clk(clk),
    .reset(reset),
    .count(count)
  );

  // Clock generator
  always #5 clk = ~clk;

  initial begin
    clk = 0; // Initialize the clock to a known state
    reset = 1;
    #10;
    reset = 0;
    #10000;
    reset =1 ;
//    $finish;
  end

  always @(posedge clk) begin
    $display("Count = %d", count);
  end

endmodule
