#line 1 "F:/8th semister/MicroContnroller/LAB/02.Seven_Segment/Seven_Segment.c"
char array_CA[] = {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void main() {
 int i =0;
 TRISB = 0x00;
 portb= 0x00;

 while(1) {
 portb = array_CA[i];
 delay_ms(500);
 i = (i+1)%10;
 }
}
