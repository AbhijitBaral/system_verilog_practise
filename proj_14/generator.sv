class generator;

transaction tr;
//mailbox #(transaction) mbx;
int count;

function new(/*mailbox #(transaction) mbx*/);
  //this.mbx = mbx;
  tr = new();
endfunction

task run();
  repeat(count)begin
	tr.randomize;
	//mbx.put(tr.copy);
  end
endtask

endclass