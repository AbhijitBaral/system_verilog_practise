module reverse_arr();

//Program to reverse a dynamic array

int dyn[]='{1,2,3,4,5};
int rev_dyn[];

initial begin
  rev_dyn = new[$size(dyn)];
  for(int k=$size(dyn)-1;k>=0;k=k-1)begin
	rev_dyn[($size(dyn)-1)-k]=dyn[k];
  end
  $display("dyn=%p\nrev_dyn=%p",dyn,rev_dyn);
end
endmodule	