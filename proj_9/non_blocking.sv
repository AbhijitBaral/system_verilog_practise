module non_blocking();

bit [3:0]a,b;

initial begin
  a=4'ha;
  $display("a=%h",a);
  
  b<=4'hb;
  $display("b=%h",b);
end
endmodule
  	
