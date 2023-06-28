#include "svdpi.h"
extern void write(int, int);
void slave_write(const int I1, const int I2)
{
  buff[I1] = I2;
}
