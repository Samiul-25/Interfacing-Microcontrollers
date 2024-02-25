
_main:

;LED_Blink.c,3 :: 		void main() {
;LED_Blink.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;LED_Blink.c,5 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;LED_Blink.c,7 :: 		while(cunter < 3){
L_main0:
	MOVLW      128
	XORWF      _cunter+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVLW      3
	SUBWF      _cunter+0, 0
L__main6:
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;LED_Blink.c,8 :: 		PORTB.RB7 = 1;
	BSF        PORTB+0, 7
;LED_Blink.c,9 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;LED_Blink.c,10 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;LED_Blink.c,12 :: 		PORTB.RB6 = 1;
	BSF        PORTB+0, 6
;LED_Blink.c,13 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;LED_Blink.c,14 :: 		PORTB.RB6 = 0;
	BCF        PORTB+0, 6
;LED_Blink.c,16 :: 		PORTB.RB5 = 1;
	BSF        PORTB+0, 5
;LED_Blink.c,17 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;LED_Blink.c,18 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;LED_Blink.c,19 :: 		cunter++;
	INCF       _cunter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _cunter+1, 1
;LED_Blink.c,20 :: 		}
	GOTO       L_main0
L_main1:
;LED_Blink.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
