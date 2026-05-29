module bit_printing();
  initial begin
	bit [31:0] src [5] = '{5{10}};
	$displayb(src[0],,src[0][0],,src[0][2:1]);
  end
endmodule