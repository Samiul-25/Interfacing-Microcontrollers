#line 1 "F:/8th semister/MicroContnroller/LAB/06.Relay/Relay.c"

void main() {
 TRISB = 0x00;
 portb = 0x00;


 while(1)
 {
 portb.f0 = 1;
 portb.f7 = 0;
 delay_ms(1000);
 portb.f0 = 0;
 portb.f7 = 1;
 delay_ms(1000);
 }

}
