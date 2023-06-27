// Code your testbench here
// or browse Examples
module tb;
  int buffer[2];
 
  import "DPI-C" function void slave_write(input int addr, input int data, int buffer[2]);
  export "DPI-C" function write;
 
  function void write_test(int addr, int data, output int buffer[2]);
    //Call C function
    $display("before-buffer[2]:%p",buffer);
    slave_write(addr, data, buffer);
    $display("after-buffer[2]:%p",buffer);
  endfunction
 
  function void write(input int buff[2]);
    //export the array from C to SV
    buffer = buff;
    $display("output buffer[2]:%p",buffer);
  endfunction
 
  initial begin
    write_test(8'h30, 8'hff, buffer);
    $display("%p\n",buffer);
  end
endmodule
