//Pattern: 1122334455

module pattern_5();

int arr[];
int j;

initial begin
  arr = new[20];
  j=0;
  for(int i=1; i<=$size(arr)/2; i++)begin
	arr[j] = i;
	j++;
	arr[j] = i;
	j++;
  end
  $display("Pattern:%p",arr);
end
endmodule
	
	  