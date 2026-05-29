// TO find whether an array is pallindrome or not

module pallindrome();

int arr[];
bit pallindrome;

initial begin
  arr = '{1,0,5,0,1};
  pallindrome = 1;
  foreach(arr[i])begin
	if(arr[i] != arr[$size(arr)-1-i])begin
	  pallindrome = 0;
	  break;
	end
  end
  if(pallindrome == 1)
	$display("%p is a pallindrome", arr);
  else
	$display("%p is not a pallindrome", arr);	
end
endmodule