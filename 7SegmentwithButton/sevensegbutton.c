char array_CA[] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
void main() {
     short i = 0;
     TRISB = 0x00;
     portb = 0xff;
     TRISD = 0xff;
     portd = 0xff;

     while(1){
          if(portd.f0 == 1){
              delay_ms(200);
              if(portd.f0 == 1){
                  if(i<9){
                      i++;
                  }
              }
          }
          if(portd.f1 == 1){
              delay_ms(200);
              if(portd.f1 == 1){
                  if(i>0){
                      i--;
                  }
              }
          }
          portb = array_CA[i];


     }
}