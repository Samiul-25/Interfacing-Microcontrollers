#line 1 "F:/8th semister/MicroContnroller/LAB/09.Servo_motor/servo_motor.c"
void main() {
 int i;
 TRISB=0x00;

 portb=0x00;

 while(1)
 {
 for(i=1;i<=50;i++)
 {
 portb.f0=0xff;
 delay_us(800);
 portb.f0=0x00;
 delay_us(19200);
 }
 delay_ms(200);
 for(i=1;i<=50;i++)
 {
 portb.f0=0xff;
 delay_us(1500);
 portb.f0=0x00;
 delay_us(18500);
 }
 delay_ms(200);
 for(i=1;i<=50;i++)
 {
 portb.f0=0xff;
 delay_us(2200);
 portb.f0=0x00;
 delay_us(17800);
 }
 delay_ms(200);

 }
}
