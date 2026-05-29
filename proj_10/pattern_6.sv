// Pattern: 5 -10 15 -20 25 -30 

module pattern_6();

int arr[];
int sign;

initial begin
  arr = new[6];
  sign = 1;
  foreach(arr[i])begin
	arr[i] = sign*(i+1)*5;
	sign *= -1;
  end
  $display("Pattern: %p", arr);
end
endmodule