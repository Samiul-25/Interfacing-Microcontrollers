
_main:

;relayproblem.c,1 :: 		void main() {
;relayproblem.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;relayproblem.c,3 :: 		portb = 0x00;
	CLRF       PORTB+0
;relayproblem.c,6 :: 		while(1)
L_main0:
;relayproblem.c,8 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;relayproblem.c,9 :: 		portb.f7 = 0;
	BCF        PORTB+0, 7
;relayproblem.c,10 :: 		delay_ms(1000);
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
;relayproblem.c,11 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;relayproblem.c,12 :: 		portb.f7 = 1;
	BSF        PORTB+0, 7
;relayproblem.c,13 :: 		delay_ms(1000);
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
;relayproblem.c,14 :: 		}
	GOTO       L_main0
;relayproblem.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
