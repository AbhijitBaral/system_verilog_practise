module dynamic_md_array();
//Dynamic multidimensional array

int dyn[][];

initial begin
	dyn = new[4];
	foreach(dyn[j])
		dyn[j] = new[j+1];

	foreach(dyn [i,j])
		dyn [i][j] = i*10 + j;

	$display("%p", dyn);
end
endmodule	