module repeat_loop();

initial begin
  repeat(5000000)begin
	$display($time);
  end
end
endmodule