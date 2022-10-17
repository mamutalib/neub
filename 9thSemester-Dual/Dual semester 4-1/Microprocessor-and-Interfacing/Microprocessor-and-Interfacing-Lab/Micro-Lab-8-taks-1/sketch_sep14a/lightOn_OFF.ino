#include <avr/io.h>

int main() {
  //setup Initialization

 // DDRB = (1<<DDB3) |  (1<<DDB2)|  (1<<DDB1)|  (1<<DDB0);
//  DDRB| = (1<<2); //declaring pb2 as output
  DDRB = 0xff ; //Declaring full port B as ouput
  DDRD = 0x00; //Declaring full port D as input

//  DDRC = 9b00001111; 

  unsigned int i;
  while(1) {
    i = PIND; //Store the value of D (PD0-PD7) in i.
    PORTB = i; //OUtput value of I to Port B
  }
}

