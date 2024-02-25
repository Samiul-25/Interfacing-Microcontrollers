
_main:

;Motor1.c,1 :: 		void main() {
;Motor1.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Motor1.c,4 :: 		portb = 0x00;
	CLRF       PORTB+0
;Motor1.c,6 :: 		while(1){
L_main0:
;Motor1.c,8 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;Motor1.c,9 :: 		portb.f1 = 1;
	BSF        PORTB+0, 1
;Motor1.c,10 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
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
;Motor1.c,11 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;Motor1.c,12 :: 		portb.f1 = 0;
	BCF        PORTB+0, 1
;Motor1.c,13 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
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
;Motor1.c,15 :: 		}
	GOTO       L_main0
;Motor1.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
