/*
BC547BP
*/

char array_CA[]={0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
void main() {
     int i=0,j;
     int leftDigit, rightDigit;
     TRISB = 0x00;     //set portb as output
     portb = 0x00;     //Initialization
     TRISD = 0x00;     //set portc as output
     portd = 0x00;     //Initialization

     while(1)
     {
         leftDigit=i/10;
         rightDigit=i%10;
         portb = array_CA[leftDigit];
         for(j=1;j<=25;j++)
         {
             portd.f0=1;
             portb = array_CA[leftDigit];
             delay_ms(10);
             portd.f0=0;

             portd.f1=1;
             portb = array_CA[rightDigit];
             delay_ms(10);
             portd.f1=0;
         }
         i++;
         i = i%100;

     }

}