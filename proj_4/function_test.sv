module function_test();

int x;
function int square(int x);
	return x**2;
endfunction

initial begin
	x = 50;
	$display("Square of %d is %d",x, square(x));
end
endmodule