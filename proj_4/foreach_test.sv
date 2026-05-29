module foreach_test();

bit [7:0] array [4];

initial begin
  foreach(array[i])
	array[i] = i;
  
  foreach(array[i])
	$display("array[%0d]=0x%0d",i, array[i]);

  $display("\t%p", array);
end
endmodule