
_main:

;Seven_Segment.c,2 :: 		void main() {
;Seven_Segment.c,3 :: 		int i =0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;Seven_Segment.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Seven_Segment.c,5 :: 		portb= 0x00;
	CLRF       PORTB+0
;Seven_Segment.c,7 :: 		while(1) {
L_main0:
;Seven_Segment.c,8 :: 		portb = array_CA[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Seven_Segment.c,9 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Seven_Segment.c,10 :: 		i = (i+1)%10;
	MOVF       main_i_L0+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      main_i_L0+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_i_L0+0
	MOVF       R0+1, 0
	MOVWF      main_i_L0+1
;Seven_Segment.c,11 :: 		}
	GOTO       L_main0
;Seven_Segment.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
