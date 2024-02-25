
_main:

;projector.c,1 :: 		void main() {
;projector.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;projector.c,3 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;projector.c,4 :: 		portb = 0x00;
	CLRF       PORTB+0
;projector.c,6 :: 		portb.f2 = 1;
	BSF        PORTB+0, 2
;projector.c,7 :: 		portb.f3 = 1;
	BSF        PORTB+0, 3
;projector.c,9 :: 		while(1){
L_main0:
;projector.c,10 :: 		if(portd.f0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;projector.c,11 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;projector.c,12 :: 		if(portd.f0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;projector.c,13 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;projector.c,14 :: 		portb.f1 = 0;
	BCF        PORTB+0, 1
;projector.c,15 :: 		portb.f2 = 1;
	BSF        PORTB+0, 2
;projector.c,16 :: 		}
L_main4:
;projector.c,17 :: 		}
L_main2:
;projector.c,18 :: 		if(portd.f1 == 1){
	BTFSS      PORTD+0, 1
	GOTO       L_main5
;projector.c,19 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;projector.c,20 :: 		if(portd.f1==1) portb.f2 = 0;
	BTFSS      PORTD+0, 1
	GOTO       L_main7
	BCF        PORTB+0, 2
L_main7:
;projector.c,21 :: 		}
L_main5:
;projector.c,22 :: 		if(portd.f2 == 1){
	BTFSS      PORTD+0, 2
	GOTO       L_main8
;projector.c,23 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;projector.c,24 :: 		if(portd.f2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_main10
;projector.c,25 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;projector.c,26 :: 		portb.f1 = 1;
	BSF        PORTB+0, 1
;projector.c,27 :: 		portb.f2 = 1;
	BSF        PORTB+0, 2
;projector.c,28 :: 		}
L_main10:
;projector.c,29 :: 		}
L_main8:
;projector.c,30 :: 		if((portb.f0 == 1 && portb.f2 ==1)||(portb.f1 == 1 && portb.f2 ==1)){
	BTFSS      PORTB+0, 0
	GOTO       L__main22
	BTFSS      PORTB+0, 2
	GOTO       L__main22
	GOTO       L__main20
L__main22:
	BTFSS      PORTB+0, 1
	GOTO       L__main21
	BTFSS      PORTB+0, 2
	GOTO       L__main21
	GOTO       L__main20
L__main21:
	GOTO       L_main17
L__main20:
;projector.c,31 :: 		portb.f3 = 0;
	BCF        PORTB+0, 3
;projector.c,32 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
;projector.c,33 :: 		portb.f3 = 1;
	BSF        PORTB+0, 3
;projector.c,34 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
;projector.c,36 :: 		}
L_main17:
;projector.c,39 :: 		}
	GOTO       L_main0
;projector.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
