#line 1 "C:/Users/Samiul Alim/Desktop/Lab/pb1ledblink.c"
int cunter = 0;

void main() {
 TRISB = 0x00;
 PORTB = 0x00;

 while(cunter < 3){
 PORTB.RB7 = 1;
 Delay_ms(1000);
 PORTB.RB7 = 0;

 PORTB.RB6 = 1;
 Delay_ms(1000);
 PORTB.RB6 = 0;

 PORTB.RB5 = 1;
 Delay_ms(1000);
 PORTB.RB5 = 0;
 cunter++;
 }
}
