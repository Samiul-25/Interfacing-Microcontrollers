#line 1 "C:/Users/Samiul Alim/Desktop/Lab/Problem 6/relaymotor.c"
void main() {

 TRISB = 0x00;
 portb = 0x00;

 while(1){

 portb.b0 = 1;
 delay_ms(1000);
 portb.b0 = 0;
 delay_ms(1000);

 }
}
