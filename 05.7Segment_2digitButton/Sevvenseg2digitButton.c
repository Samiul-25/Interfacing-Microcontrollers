/*
BC547BP
*/

char array_CA[]={0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
void main() {
     int i=0;
     int leftDigit, rightDigit;
     TRISB = 0x00;
     portb = 0x00;
     TRISC = 0x00;
     portc = 0x00;

     TRISD = 0xff;


     while(1)
     {
         leftDigit=i/10;
         rightDigit=i%10;
         portb = array_CA[leftDigit];
         portc.f0=1;
         portb = array_CA[leftDigit];
         delay_ms(10);
         portc.f0=0;

         portc.f1=1;
         portb = array_CA[rightDigit];
         delay_ms(10);
         portc.f1=0;

         if(portd.f0 == 1){
              delay_ms(100);
              if(portd.f0 == 1){
                  if(i<99){
                      i++;
                  }
              }
          }
          if(portd.f1 == 1){
              delay_ms(100);
              if(portd.f1 == 1){
                  if(i>0){
                      i--;
                  }
              }
          }

     }

}