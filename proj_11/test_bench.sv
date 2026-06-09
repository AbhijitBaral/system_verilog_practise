`include "package.sv"
import my_pkg::*;
module tb;
  // signal declaration
  logic clk;
  logic rst;
  logic d;
  logic q;
  // clock, rst generation
  initial begin
    clk= 1'b0;
  end
  // clock generation
  
  always #10 clk= ~clk;
  
  // rest generation
  initial begin
    rst= 1'b1;// active low
    #5 rst =1'b0;
  end
  
  dff uut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q));
  
  // Dump waveform
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    #200 $finish;
  end
endmodule
