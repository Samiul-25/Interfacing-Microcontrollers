#line 1 "F:/8th semister/MicroContnroller/LAB/07.Relay_part1/Relay_part1.c"
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
