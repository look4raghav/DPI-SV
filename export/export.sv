module tb;

  export "DPI-C" function addition; // This is not a function prototype
  import "DPI-C" context function void c_caller();
  
  function void addition(int a, b);
    $display("Addition of %0d and %0d is %0d\n", a, b, a+b);
  endfunction
    
  initial
  begin
    c_caller();
  end
endmodule
