// Pattern: 1010101010

module pattern_7();

int arr[];
bit value;

initial begin
  arr = new[10];
  value = 1;
  
  foreach(arr[i])begin
	arr[i] = value;
	value += 1;
  end
  $display("Pattern:%p", arr);
end
endmodule