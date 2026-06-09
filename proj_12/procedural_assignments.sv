module tb();
reg a,b,c;

initial begin
	a = 1;
	b = 0;

	b<=a;
	a<=0;
	#10;
	c=b;
	$display("%0d,%0d,%0d",a,b,c);
	#1;
	$display("%0d,%0d,%0d",a,b,c);
end
endmodule