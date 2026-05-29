module clk();

parameter TP=10, DC=0.7;
reg clk;

always begin
  #(DC*TP) clk = ~clk;
  #(TP*(1-DC)) clk = ~clk;
end

initial
  clk = 0;
endmodule