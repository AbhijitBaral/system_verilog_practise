class transaction;
  rand bit din;    // Define a random input bit "din"
  bit dout;        // Define an output bit "dout"
  
  function transaction copy();
    // transaction copy; automatically created
    copy = new();   // Create a new transaction object
    copy.din = din;  // Copy the input value		//this.din -> din
    copy.dout = dout;  // Copy the output value		//this.dout -> dout
  endfunction
  
  function void display(input string tag);
    $display("[%0s] : DIN : %0b DOUT : %0b", tag, din, dout); // Display transaction information
  endfunction
  
endclass
 