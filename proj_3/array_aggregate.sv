module array_aggregate();
  initial begin
	static bit [31:0] arr_1 [5] = '{0,1,2,3,4},
		   arr_2 [5] = '{4,3,2,1,0};
	if (arr_1 == arr_2)
		$display("\tarr_1 == arr_2");
	else
		$display("\tarr_1 != arr_2");
	
	//Aggreagate copy all values from one array to another
	arr_1 = arr_2;
	
	arr_2[0] = 5;
	
	$display("\tarr_1 = %p\n\tarr_2 = %p", arr_1, arr_2);
	
	$display("\tarr_1 %s arr_2", (arr_1==arr_2) ? "==":"!=");

	$display("\tarr_1[1:4] %s arr_2[1:4]", (arr_1[1:4]==arr_2[1:4]) ? "==":"!=");
  end
endmodule