`include "tb_package.svh"
module tb;
  import tb_pkg::*;
  dff_if vif(); 		// Create DUT interface
 
  dff dut(
	.clk(vif.clk),
	.reset(vif.reset),
	.din(vif.din),
	.dout(vif.dout)
  ); 		// Instantiate DUT
  
  initial begin
    vif.clk <= 0; 		// Initialize clock signal
  end
  
  always #10 vif.clk <= ~vif.clk; // Toggle the clock every 10 time units
  
  environment env; 		// Create environment instance
 
  initial begin
    env = new(vif); 		// Initialize the environment with the DUT interface
    env.gen.count = 30; 	// Set the generator's stimulus count
    env.run(); 			// Run the environment
  end
  
  initial begin
    $dumpfile("dump.vcd"); 	// Specify the VCD dump file
    $dumpvars(0,tb); 		// Dump all variables
  end
endmodule