
_main:

;Relay.c,2 :: 		void main() {
;Relay.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Relay.c,4 :: 		portb = 0x00;
	CLRF       PORTB+0
;Relay.c,7 :: 		while(1)
L_main0:
;Relay.c,9 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;Relay.c,10 :: 		portb.f7 = 0;
	BCF        PORTB+0, 7
;Relay.c,11 :: 		delay_ms(1000);
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
;Relay.c,12 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;Relay.c,13 :: 		portb.f7 = 1;
	BSF        PORTB+0, 7
;Relay.c,14 :: 		delay_ms(1000);
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
;Relay.c,15 :: 		}
	GOTO       L_main0
;Relay.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
