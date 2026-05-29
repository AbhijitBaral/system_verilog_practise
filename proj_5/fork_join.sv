module fork_join();

initial begin
  #1 $display("[%0t ns] Start fork....,", $time);
  
  fork
	#5 $display("[%0t ns] Thread_1", $time);

	begin
	  #2 $display("[%0t ns] Thread2_A", $time);
	  #2 $display("[%0t ns] Thread2_B", $time);
	end
	
	#10 $display("[%0t ns] Thread3", $time);
  join_none
  
  $display("[%0t ns] After Fork-join", $time);
  wait fork;
end
endmodule