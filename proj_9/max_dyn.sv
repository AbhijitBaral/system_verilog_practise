module max_dyn();

int dyn[]='{1,22,3,4,5,5,6,12};
int max;

initial begin
  max=dyn[0];
  foreach(dyn[idx])
	if(dyn[idx]>max)
		max = dyn[idx];
  $display("Maximum in the array %p is %d",dyn,max);
end
endmodule
	