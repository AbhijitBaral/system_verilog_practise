//Pattern: {9, 19, 29, 39, 49, 59, 69, 79}

module pattern_4();

int arr[];

initial begin
  arr = new[8];
  for(int i=0; i<=$size(arr)-1; i++)
	arr[i] = (i)*10 + 9;
  $display("Pattern:%p", arr);
end
endmodule