module assoc_arr_rand();
// Access a random element from an associative array

int aa[int] = '{0:1, 5:10, 10:12, 15:32, 20:31, 100:32, 1000:55};
int idx, element, count;

initial begin
  element = $urandom_range(aa.size()-1);
  foreach(aa[i])
	if(count++ == element)begin
		idx = i;
		break;
	end
  $display("element#%0d aa[%0d] = %0d", element, idx, aa[idx]);
end
endmodule    