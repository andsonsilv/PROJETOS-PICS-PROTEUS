
_main:

;BLK3Leds.c,1 :: 		void main(){
;BLK3Leds.c,2 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;BLK3Leds.c,3 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;BLK3Leds.c,5 :: 		while(1){
L_main0:
;BLK3Leds.c,6 :: 		RB1_bit = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;BLK3Leds.c,7 :: 		RB2_bit = 0;
	BCF        RB2_bit+0, BitPos(RB2_bit+0)
;BLK3Leds.c,8 :: 		RB3_bit = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;BLK3Leds.c,9 :: 		delay_ms(1000);
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
;BLK3Leds.c,10 :: 		RB1_bit = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;BLK3Leds.c,11 :: 		RB2_bit = 0;
	BCF        RB2_bit+0, BitPos(RB2_bit+0)
;BLK3Leds.c,12 :: 		RB3_bit = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;BLK3Leds.c,13 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;BLK3Leds.c,14 :: 		RB1_bit = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;BLK3Leds.c,15 :: 		RB2_bit = 1;
	BSF        RB2_bit+0, BitPos(RB2_bit+0)
;BLK3Leds.c,16 :: 		RB3_bit = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;BLK3Leds.c,17 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;BLK3Leds.c,18 :: 		RB1_bit = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;BLK3Leds.c,19 :: 		RB2_bit = 1;
	BSF        RB2_bit+0, BitPos(RB2_bit+0)
;BLK3Leds.c,20 :: 		RB3_bit = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;BLK3Leds.c,21 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;BLK3Leds.c,22 :: 		RB1_bit = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;BLK3Leds.c,23 :: 		RB2_bit = 0;
	BCF        RB2_bit+0, BitPos(RB2_bit+0)
;BLK3Leds.c,24 :: 		RB3_bit = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;BLK3Leds.c,25 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;BLK3Leds.c,26 :: 		RB1_bit = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;BLK3Leds.c,27 :: 		RB2_bit = 0;
	BCF        RB2_bit+0, BitPos(RB2_bit+0)
;BLK3Leds.c,28 :: 		RB3_bit = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;BLK3Leds.c,29 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;BLK3Leds.c,30 :: 		RB1_bit = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;BLK3Leds.c,31 :: 		RB2_bit = 1;
	BSF        RB2_bit+0, BitPos(RB2_bit+0)
;BLK3Leds.c,32 :: 		RB3_bit = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;BLK3Leds.c,33 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;BLK3Leds.c,34 :: 		RB1_bit = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;BLK3Leds.c,35 :: 		RB2_bit = 1;
	BSF        RB2_bit+0, BitPos(RB2_bit+0)
;BLK3Leds.c,36 :: 		RB3_bit = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;BLK3Leds.c,37 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;BLK3Leds.c,39 :: 		}
	GOTO       L_main0
;BLK3Leds.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
