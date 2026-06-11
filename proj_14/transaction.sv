class transaction;
    rand bit[31:0] paddr,
    rand bit psel,
    rand bit penable,
    rand bit[7:0] pwdata;
    rand bit pwrite;

    bit [7:0] prdata;
    bit pready;
    bit pslverr;

endclass