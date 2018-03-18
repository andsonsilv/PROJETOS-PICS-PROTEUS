
_main:

;firmaweBLK.c,1 :: 		void main(){
;firmaweBLK.c,2 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;firmaweBLK.c,3 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;firmaweBLK.c,5 :: 		while(1){
L_main0:
;firmaweBLK.c,6 :: 		RB1_bit = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;firmaweBLK.c,7 :: 		delay_ms(1000);
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
;firmaweBLK.c,8 :: 		RB1_bit = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;firmaweBLK.c,9 :: 		delay_ms(1000);
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
;firmaweBLK.c,10 :: 		}
	GOTO       L_main0
;firmaweBLK.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
