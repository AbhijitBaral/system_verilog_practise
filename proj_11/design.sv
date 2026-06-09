// Code your design here
// Code your design here
module dff (
    input wire clk,
    input wire rst,   // synchronous reset
    input wire d,
    output reg q
);

always @(posedge clk) begin
    if (rst)
        q <= 0;
    else
        q <= d;
end
endmodule


/// interface dff

interface dff_if;
  logic clk;
  logic rst;
  logic d;
  logic q;
  
endinterface