`include "tb_pkg.svh"
module test_bench;
import tb_pkg::*;
v_if vif();

apb_s dut(
	.pclk(vif.pclk),
	.presetn(vif.presetn)
);

initial begin
	vif.pclk <= 0;
	vif.presetn <= 0;
	# 10 vif.presetn <= 1;
	# 20 vif.presetn <= 0;
	#100 $finish;
end

always #10 vif.pclk <= ~vif.pclk;



endmodule