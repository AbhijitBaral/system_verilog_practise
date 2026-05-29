// pattern: 123454321

module pattern_2();

int arr[];

initial begin
  arr = new[11];
  for(int i=0; i<=($size(arr)-1)/2; i++)begin
	arr[i] = i+1;
	arr[$size(arr)-1-i] = i+1;
  end
  $display("Pattern: %p", arr);
end

endmodule 