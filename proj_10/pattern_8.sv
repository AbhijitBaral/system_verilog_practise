// Pattern : 1111111111

module pattern_8();

int arr[];

initial begin
  arr = new[10];
  foreach(arr[i])
	arr[i] = 1'b1;
  $display("Pattern: %p", arr);
end
endmodule