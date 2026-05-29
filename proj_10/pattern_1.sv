//pattern: 0101010101

module pattern_1();

bit arr[];
bit value;

initial begin
  arr = new[11];
  value = 0;
  for(int i=0; i<=$size(arr)-1; i++)begin
	arr[i] = value;
	value += 1;
  end
  $display("pattern:%p",arr);
end
endmodule	