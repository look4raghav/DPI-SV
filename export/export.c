#include <stdio.h>
//#include <svdpi.h>

extern void addition(int, int);

void c_caller() {
  printf("Calling addition function from c_caller\n");
  addition(4, 5);

}
