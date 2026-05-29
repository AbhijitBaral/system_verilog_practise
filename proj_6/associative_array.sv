module associative_array();

byte assoc[byte], idx=1;

initial begin
  //Initialize widely scattered index values
  do begin
	assoc[idx] = idx;
	idx = idx << 1;
  end while (idx !=0);

  foreach(assoc[i])
	$display("assoc[%d]=%d", i, assoc[i]);

  $display("\n");

  if(assoc.first(idx))
	do
	  $display("assoc[%h]=%h", idx, assoc[idx]);
	while (assoc.next(idx));

  void'(assoc.first(idx));
  void'(assoc.delete(idx));
  $display("The array now has %0d elements", assoc.num());
	
end
endmodule