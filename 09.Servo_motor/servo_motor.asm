
_main:

;servo_motor.c,1 :: 		void main() {
;servo_motor.c,3 :: 		TRISB=0x00;
	CLRF       TRISB+0
;servo_motor.c,5 :: 		portb=0x00;
	CLRF       PORTB+0
;servo_motor.c,7 :: 		while(1)
L_main0:
;servo_motor.c,9 :: 		for(i=1;i<=50;i++)
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVF       R1+0, 0
	SUBLW      50
L__main21:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;servo_motor.c,11 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;servo_motor.c,12 :: 		delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;servo_motor.c,13 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;servo_motor.c,14 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;servo_motor.c,9 :: 		for(i=1;i<=50;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor.c,15 :: 		}
	GOTO       L_main2
L_main3:
;servo_motor.c,16 :: 		delay_ms(200);
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
;servo_motor.c,17 :: 		for(i=1;i<=50;i++)
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
L_main8:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVF       R1+0, 0
	SUBLW      50
L__main22:
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;servo_motor.c,19 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;servo_motor.c,20 :: 		delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
;servo_motor.c,21 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;servo_motor.c,22 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;servo_motor.c,17 :: 		for(i=1;i<=50;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor.c,23 :: 		}
	GOTO       L_main8
L_main9:
;servo_motor.c,24 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
;servo_motor.c,25 :: 		for(i=1;i<=50;i++)
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
L_main14:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVF       R1+0, 0
	SUBLW      50
L__main23:
	BTFSS      STATUS+0, 0
	GOTO       L_main15
;servo_motor.c,27 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;servo_motor.c,28 :: 		delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
	NOP
;servo_motor.c,29 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;servo_motor.c,30 :: 		delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
;servo_motor.c,25 :: 		for(i=1;i<=50;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor.c,31 :: 		}
	GOTO       L_main14
L_main15:
;servo_motor.c,32 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
;servo_motor.c,34 :: 		}
	GOTO       L_main0
;servo_motor.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
