//Pattern: 1234554321

module pattern_3();

int arr[];

initial begin
  arr = new[12];
  for(int i=0; i<=$size(arr)/2-1;i++)begin
	arr[i]= i+1;
	arr[$size(arr)-1-i] = i+1;
  end
  $display("Pattern:%p",arr);
end
endmodule