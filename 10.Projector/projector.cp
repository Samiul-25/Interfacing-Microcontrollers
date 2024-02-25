#line 1 "F:/8th semister/MicroContnroller/LAB/10.Projector/projector.c"
void main() {
 TRISB = 0x00;
 TRISD = 0xff;
 portb = 0x00;

 portb.f2 = 1;
 portb.f3 = 1;

 while(1){
 if(portd.f0 == 1){
 delay_ms(100);
 if(portd.f0==1){
 portb.f0 = 1;
 portb.f1 = 0;
 portb.f2 = 1;
 }
 }
 if(portd.f1 == 1){
 delay_ms(100);
 if(portd.f1==1) portb.f2 = 0;
 }
 if(portd.f2 == 1){
 delay_ms(100);
 if(portd.f2==1){
 portb.f0 = 0;
 portb.f1 = 1;
 portb.f2 = 1;
 }
 }
 if((portb.f0 == 1 && portb.f2 ==1)||(portb.f1 == 1 && portb.f2 ==1)){
 portb.f3 = 0;
 delay_ms(10);
 portb.f3 = 1;
 delay_ms(10);

 }


 }

}
