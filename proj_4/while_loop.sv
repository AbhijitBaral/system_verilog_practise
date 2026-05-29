module while_loop();

bit clk;
always #10 clk = ~clk;

initial begin
  bit [3:0] counter;

  $display("Counter = %0d", counter);
  while(counter < 17)begin
	@(posedge clk);
	counter++;
	$display("Counter = %0d", counter);
  end
  
  //$display("Counter = %0d", counter);
  $finish;
end
endmodule