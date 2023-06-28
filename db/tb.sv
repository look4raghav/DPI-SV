module Bus(input In1, output Out1);
  import "DPI" function void slave_write(input int address, input int data);
  export "DPI" function write;
  function void write(int address, int data);
    slave_write(address, data);
  endfunction
endmodule
