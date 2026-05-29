module array_test();
 initial begin
 	byte twoD [4][6];
	foreach (twoD[i,j])
		twoD[i][j] = i*10+j;
	foreach (twoD[i])begin
		$write("%2d:", i);
		foreach(twoD[,j])
			$write("%3d", twoD[i][j]);
		$display;
	end
 end
endmodule 