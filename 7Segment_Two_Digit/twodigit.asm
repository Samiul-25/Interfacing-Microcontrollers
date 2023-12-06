
_main:

;twodigit.c,2 :: 		void main() {
;twodigit.c,3 :: 		int i=0,j;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;twodigit.c,5 :: 		TRISB = 0x00;     //set portb as output
	CLRF       TRISB+0
;twodigit.c,6 :: 		portb = 0x00;     //Initialization
	CLRF       PORTB+0
;twodigit.c,7 :: 		TRISD = 0x00;     //set portc as output
	CLRF       TRISD+0
;twodigit.c,8 :: 		portd = 0x00;     //Initialization
	CLRF       PORTD+0
;twodigit.c,10 :: 		while(1)
L_main0:
;twodigit.c,12 :: 		leftDigit=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       FLOC__main+0, 0
	MOVWF      main_leftDigit_L0+0
	MOVF       FLOC__main+1, 0
	MOVWF      main_leftDigit_L0+1
;twodigit.c,13 :: 		rightDigit=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_rightDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_rightDigit_L0+1
;twodigit.c,14 :: 		portb = array_CA[leftDigit];
	MOVF       FLOC__main+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;twodigit.c,15 :: 		for(j=1;j<=25;j++)
	MOVLW      1
	MOVWF      main_j_L0+0
	MOVLW      0
	MOVWF      main_j_L0+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_j_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVF       main_j_L0+0, 0
	SUBLW      25
L__main8:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;twodigit.c,17 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;twodigit.c,18 :: 		portb = array_CA[leftDigit];
	MOVF       main_leftDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;twodigit.c,19 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;twodigit.c,20 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;twodigit.c,22 :: 		portd.f1=1;
	BSF        PORTD+0, 1
;twodigit.c,23 :: 		portb = array_CA[rightDigit];
	MOVF       main_rightDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;twodigit.c,24 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;twodigit.c,25 :: 		portd.f1=0;
	BCF        PORTD+0, 1
;twodigit.c,15 :: 		for(j=1;j<=25;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;twodigit.c,26 :: 		}
	GOTO       L_main2
L_main3:
;twodigit.c,27 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;twodigit.c,28 :: 		i = i%100;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_i_L0+0
	MOVF       R0+1, 0
	MOVWF      main_i_L0+1
;twodigit.c,30 :: 		}
	GOTO       L_main0
;twodigit.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
