module arr_locator();

int d[] = '{9,1,8,3,4,4};

initial begin
  d.reverse();
  $display("reversed:%p",d);

  d.sort();
  $display("Sorted:%p", d);

  d.rsort();
  $display("Reverse sorted:%p", d);

  d.shuffle();
  $display("shuffled:%p", d);

end
endmodule