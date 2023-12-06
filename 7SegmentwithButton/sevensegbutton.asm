
_main:

;sevensegbutton.c,2 :: 		void main() {
;sevensegbutton.c,3 :: 		short i = 0;
	CLRF       main_i_L0+0
;sevensegbutton.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;sevensegbutton.c,5 :: 		portb = 0xff;
	MOVLW      255
	MOVWF      PORTB+0
;sevensegbutton.c,6 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;sevensegbutton.c,7 :: 		portd = 0xff;
	MOVLW      255
	MOVWF      PORTD+0
;sevensegbutton.c,9 :: 		while(1){
L_main0:
;sevensegbutton.c,10 :: 		if(portd.f0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;sevensegbutton.c,11 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;sevensegbutton.c,12 :: 		if(portd.f0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;sevensegbutton.c,13 :: 		if(i<9){
	MOVLW      128
	XORWF      main_i_L0+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      9
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;sevensegbutton.c,14 :: 		i++;
	INCF       main_i_L0+0, 1
;sevensegbutton.c,15 :: 		}
L_main5:
;sevensegbutton.c,16 :: 		}
L_main4:
;sevensegbutton.c,17 :: 		}
L_main2:
;sevensegbutton.c,18 :: 		if(portd.f1 == 1){
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;sevensegbutton.c,19 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;sevensegbutton.c,20 :: 		if(portd.f1 == 1){
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;sevensegbutton.c,21 :: 		if(i>0){
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;sevensegbutton.c,22 :: 		i--;
	DECF       main_i_L0+0, 1
;sevensegbutton.c,23 :: 		}
L_main9:
;sevensegbutton.c,24 :: 		}
L_main8:
;sevensegbutton.c,25 :: 		}
L_main6:
;sevensegbutton.c,26 :: 		portb = array_CA[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevensegbutton.c,29 :: 		}
	GOTO       L_main0
;sevensegbutton.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
