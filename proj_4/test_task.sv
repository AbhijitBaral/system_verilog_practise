module test_task();

int a = 10;
int b = 20;

task swap(inout int x, inout int y);
	int temp;
	temp = x;
	x = y;
	y = temp;
endtask

initial begin
	swap(a,b);
	$display("New values of a and b are:%d, %d",a,b);
end
endmodule 
