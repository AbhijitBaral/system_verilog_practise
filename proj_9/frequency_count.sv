//Given an array, count frequency of each element using associative array

module frequency_count();

int arr[]='{1,1,3,5,1,3,5,12,13,42,55,4,6,7,2};
int automatic unique_arr[$];
int count[int];
int counter,indicate;

//Function to return unique array
function void custom_unique(int arr[],ref int unique_arr[$]);
  indicate = 1'b0;
  unique_arr.push_back(arr[0]);
  foreach(arr[i])begin
	foreach(unique_arr[idx])
	  if(unique_arr[idx] == arr[i])
		indicate = indicate + 1;
		
	if(indicate == 1'b0) 
	  unique_arr.push_back(arr[i]);
	
	indicate = 1'b0;
  end
endfunction

initial begin
  counter = 1'b0;
  custom_unique(arr,unique_arr);
  foreach(unique_arr[i])begin
	foreach(arr[idx])
		if(arr[idx] == unique_arr[i])
		  counter = counter + 1;
	count[i] = counter;
	counter = 1'b0;
  end
  $display("Original array:%p",arr);
  $display("unique arrar:%p", unique_arr);
  $display("frequency of elements:%p",count);
end
endmodule