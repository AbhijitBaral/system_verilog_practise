module assoc_arr_literal();

int power_of_2[*] = '{"A":1, 1:2, 2:4};

initial begin
  for (int i=3; i<5; i++)
	power_of_2[i] = 1 << i;
  $display("%p\n", power_of_2); 

  foreach(power_of_2[idx])
	$display("power_of_2[%d]=%d",idx, power_of_2[idx]);
end
endmodule