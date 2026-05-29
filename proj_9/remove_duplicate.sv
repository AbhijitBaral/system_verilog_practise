//Remove duplicate elements from a dynamic array

module remove_duplicate();

int dyn[]='{1,1,2,3,4,6,8,12,66,8,66};
int unique_arr[$];
bit indicate;

initial begin
  indicate = 1'b0;
  unique_arr.push_back(dyn[0]);
  foreach(dyn[i])begin
	foreach(unique_arr[idx])
	  if(unique_arr[idx] == dyn[i])
		indicate = indicate + 1;
		
	if(indicate == 1'b0) 
	  unique_arr.push_back(dyn[i]);
	
	indicate = 1'b0;
  end
  $display("Original array:%p",dyn);
  $display("Unique array:%p",unique_arr);
end
endmodule