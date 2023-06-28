module tb;

  import "DPI-C" function void addition(int a, int b);
  
  initial
  begin
    $display("Before add function call");
    addition(4,5);
    $display("After add function call");
  end
  
endmodule
