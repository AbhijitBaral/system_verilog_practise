module assoc_arr_file();

int switch[string], min_address, max_address, i, file;

initial begin
  string s;
  file = $fopen("switch.txt", "r");
  while(! $feof(file)) begin
	$fscanf(file, "%d %s", i, s);
	switch[s] = i;
  end
  $fclose(file);

  min_address = switch["min_address"];
  
  if(switch.exists("max_address"))
	max_address = switch["max_address"];
  else
	max_address = 1000;

  foreach (switch[s])
	$display("switch[%s] = %d", s, switch[s]);
end
endmodule

 