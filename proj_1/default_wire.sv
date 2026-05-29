module tb();
 wire arr[0:3];
 assign arr = 4'b11_10;
 initial begin
	$display("\tvalue of arr[2] is:%4b",arr);
 end
endmodule