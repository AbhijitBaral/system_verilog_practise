module queue();

int j=1;
q2[$] = {3,4};
q[$] = {0,2,3};

initial begin
	q.insert(1,j);
	foreach(q[j])
		$display(q[j]);
end
endmodule