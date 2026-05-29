//Separate even and odd elements into two different queues

module even_odd();

int dyn[]='{0,1,2,3,4,5,6,7,7,8,8,9},even[$], odd[$];

initial begin
  foreach(dyn[i])begin
	if(dyn[i]%2 == 0)
		even.push_back(dyn[i]);
	else
		odd.push_back(dyn[i]);
  end
  $display("Original%p\neven:%p\nodd:%p",dyn,even,odd);
end
endmodule