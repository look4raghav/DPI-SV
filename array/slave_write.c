extern void write(int *buffer); // Imported from SystemVerilog
 
void slave_write(int I1, int I2, int *buff) {
 
  buff[0] = I1;
  buff[1] = I2;
  write(buff);
  printf("after write call\n");
}	
