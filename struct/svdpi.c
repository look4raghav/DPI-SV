#include "svdpi.h"
#include "svdpi_src.h"
typedef struct
{
char A;
SV_BIT_PACKED_ARRAY(4*8, B);
int C;
}
ABC;

SV_LOGIC_PACKED_ARRAY(64, Arr);

extern void SV_Func(const int, svLogicPackedArrRef);
void C_Func(const ABC *S)
struct is passed by reference
{
  SV_Func(2, (svLogicPackedArrRef)&Arr);
}
