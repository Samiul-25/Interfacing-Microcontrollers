
_main:

;Sevvenseg2digitButton.c,6 :: 		void main() {
;Sevvenseg2digitButton.c,7 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;Sevvenseg2digitButton.c,9 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Sevvenseg2digitButton.c,10 :: 		portb = 0x00;
	CLRF       PORTB+0
;Sevvenseg2digitButton.c,11 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Sevvenseg2digitButton.c,12 :: 		portc = 0x00;
	CLRF       PORTC+0
;Sevvenseg2digitButton.c,14 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Sevvenseg2digitButton.c,17 :: 		while(1)
L_main0:
;Sevvenseg2digitButton.c,19 :: 		leftDigit=i/10;
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
;Sevvenseg2digitButton.c,20 :: 		rightDigit=i%10;
	MOVF       R0+0, 0
	MOVWF      main_rightDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_rightDigit_L0+1
;Sevvenseg2digitButton.c,21 :: 		portb = array_CA[leftDigit];
	MOVF       FLOC__main+0, 0
	ADDLW      _array_CA+0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Sevvenseg2digitButton.c,22 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;Sevvenseg2digitButton.c,23 :: 		portb = array_CA[leftDigit];
	MOVF       R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Sevvenseg2digitButton.c,24 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;Sevvenseg2digitButton.c,25 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;Sevvenseg2digitButton.c,27 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;Sevvenseg2digitButton.c,28 :: 		portb = array_CA[rightDigit];
	MOVF       main_rightDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Sevvenseg2digitButton.c,29 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;Sevvenseg2digitButton.c,30 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;Sevvenseg2digitButton.c,32 :: 		if(portd.f0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;Sevvenseg2digitButton.c,33 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;Sevvenseg2digitButton.c,34 :: 		if(portd.f0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main6
;Sevvenseg2digitButton.c,35 :: 		if(i<99){
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      99
	SUBWF      main_i_L0+0, 0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;Sevvenseg2digitButton.c,36 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;Sevvenseg2digitButton.c,37 :: 		}
L_main7:
;Sevvenseg2digitButton.c,38 :: 		}
L_main6:
;Sevvenseg2digitButton.c,39 :: 		}
L_main4:
;Sevvenseg2digitButton.c,40 :: 		if(portd.f1 == 1){
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;Sevvenseg2digitButton.c,41 :: 		delay_ms(100);
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
;Sevvenseg2digitButton.c,42 :: 		if(portd.f1 == 1){
	BTFSS      PORTD+0, 1
	GOTO       L_main10
;Sevvenseg2digitButton.c,43 :: 		if(i>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main11
;Sevvenseg2digitButton.c,44 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;Sevvenseg2digitButton.c,45 :: 		}
L_main11:
;Sevvenseg2digitButton.c,46 :: 		}
L_main10:
;Sevvenseg2digitButton.c,47 :: 		}
L_main8:
;Sevvenseg2digitButton.c,49 :: 		}
	GOTO       L_main0
;Sevvenseg2digitButton.c,51 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
