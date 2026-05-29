module dynamic_array_1();

int dyn[];

initial begin
	dyn = new[5];
	foreach(dyn[j])
		dyn[j] = j;
	$display("\tOriginal array:%p",dyn);
	
	dyn = new[20](dyn);
	$display("\tResized array & copied:%p",dyn);
	
	dyn=new[100];
	$display("\tResized array & erased:%p",dyn);
	
	dyn.delete();
	$display("\t%p",dyn);
end
endmodule