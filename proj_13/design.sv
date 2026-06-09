module dff (
    input wire clk,
    input wire reset,   // synchronous reset
    input wire din,
    output reg dout
);

always @(posedge clk) begin
  if (reset)
        dout <= 0;
    else
        dout <= din;
end
endmodule