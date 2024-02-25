
_main:

;SevenSegment2digit.c,6 :: 		void main() {
;SevenSegment2digit.c,7 :: 		int i=0,j;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;SevenSegment2digit.c,9 :: 		TRISB = 0x00;     //set portb as output
	CLRF       TRISB+0
;SevenSegment2digit.c,10 :: 		portb = 0x00;     //Initialization
	CLRF       PORTB+0
;SevenSegment2digit.c,11 :: 		TRISD = 0x00;     //set portc as output
	CLRF       TRISD+0
;SevenSegment2digit.c,12 :: 		portd = 0x00;     //Initialization
	CLRF       PORTD+0
;SevenSegment2digit.c,14 :: 		while(1)
L_main0:
;SevenSegment2digit.c,16 :: 		leftDigit=i/10;
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
;SevenSegment2digit.c,17 :: 		rightDigit=i%10;
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
;SevenSegment2digit.c,18 :: 		portb = array_CA[leftDigit];
	MOVF       FLOC__main+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegment2digit.c,19 :: 		for(j=1;j<=25;j++)
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
;SevenSegment2digit.c,21 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;SevenSegment2digit.c,22 :: 		portb = array_CA[leftDigit];
	MOVF       main_leftDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegment2digit.c,23 :: 		delay_ms(10);
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
;SevenSegment2digit.c,24 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;SevenSegment2digit.c,26 :: 		portd.f1=1;
	BSF        PORTD+0, 1
;SevenSegment2digit.c,27 :: 		portb = array_CA[rightDigit];
	MOVF       main_rightDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegment2digit.c,28 :: 		delay_ms(10);
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
;SevenSegment2digit.c,29 :: 		portd.f1=0;
	BCF        PORTD+0, 1
;SevenSegment2digit.c,19 :: 		for(j=1;j<=25;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;SevenSegment2digit.c,30 :: 		}
	GOTO       L_main2
L_main3:
;SevenSegment2digit.c,31 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;SevenSegment2digit.c,32 :: 		i = i%100;
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
;SevenSegment2digit.c,34 :: 		}
	GOTO       L_main0
;SevenSegment2digit.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
