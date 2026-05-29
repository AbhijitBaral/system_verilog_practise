module blocking_example();

reg [7:0] x,y,z, p,q;

initial begin
  x = 8'h5C;
  $display("[%0t] x = 0x%0h, y = 0x%0h, z = 0x%0h", $time, x,y,z);

  #5;
  y = 8'hA3;
  $display("[%0t] x = 0x%0h, y = 0x%0h, z = 0x%0h", $time, x,y,z);

  #5;
  z = 8'h7F;
  $display("[%0t] x = 0x%0h, y = 0x%0h, z = 0x%0h", $time, x,y,z);
end

initial begin
  p = 8'hC1;
  $display("[%0t] p = 0x%0h, q = 0x%0h", $time, p,q);

  #5;
  q = 8'h2D;
  $display("[%0t] p = 0x%0h, q = 0x%0h", $time, p,q);
end

endmodule