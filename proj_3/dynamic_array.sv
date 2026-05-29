module dynamic_array();
  int dyn[], d2[];
  initial begin
	dyn = new[5];
	foreach(dyn[j])
		dyn[j] = j;
	
	d2 = dyn;
	d2[0] = 5;
	$display("\tdyn=%p\td2=%p",dyn, d2);
  end
endmodule