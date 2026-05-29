module typedef_tb();

parameter OPSIZE = 8;
typedef logic [OPSIZE-1:0] opreg_t;

typedef int fixed_array5_t[5];
fixed_array5_t f5;

opreg_t op_a, op_b;

initial begin
  op_a = '{1,1,1,1,0,0,0,0};
  op_a = 8'b1111_0000;
  //Both the above assignments are equivalent
  $display("op_a=%p", op_a);

  foreach(f5[i])
	f5[i] = i;
  $display("f5 = %p", f5);
end
endmodule