module forever_loop();

initial begin
  forever begin
	#100 $display($time);
  end
end

initial begin
  #50 $finish;
end
endmodule