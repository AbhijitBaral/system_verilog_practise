module associative_array();

int a[int];
int a1[string];
string a2[int];

initial begin
	a = {0: 1,
	     1: 2,
	     2: 3};
	$display("\tarray a:%p",a);
	foreach(a[j])
	  $display("\t%d",a[j]);
	
	a1 = {"A":0,
	      "B":1,
	      "C":2};
	$display("\tarray a1:%p",a1);
	foreach(a1[j])
	  $display("\t%d",a1[j]);

	a2 = {0: "A",
	      1: "B",
	      2: "C"};
	$display("\tarray a2:%p",a2);
	foreach(a2[j])
	  $display("\t%s",a2[j]);
end
endmodule