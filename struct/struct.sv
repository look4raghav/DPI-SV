typedef struct {
  byte A;
  bit [4:1][0:7] B;
  int C;
} ABC;

import "DPI" function void C_Func(input ABC S);
export "DPI" function SV_Func;

function void SV_Func(input int In, output logic[15:0] Out);
endfunction
