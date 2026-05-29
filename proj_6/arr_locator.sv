module arr_locator();

int d[] = '{9,1,8,3,4,4}, tq[$];

initial begin
  //Find all elements greater than 3
  tq = d.find with (item > 3);
  $display("d=%p\ttq=%p\n",d,tq); 

  tq.delete();  
  //Equivalent alternative
  foreach(d[i])
	if(d[i] > 3)
	  tq.push_back(d[i]);
  $display("d=%p\ttq=%p",d,tq);

  tq = d.find_index with (item>3);
  $display("\ntq = %p", tq);
  tq = d.find_first with (item>99);
  $display("\ntq = %p", tq);
  tq = d.find_first_index with (item == 8);
  $display("\ntq = %p", tq);
  tq = d.find_last with (item == 4);
  $display("\ntq = %p", tq);
  tq = d.find_last_index with (item == 4);
  $display("\ntq = %p", tq);

end
endmodule 