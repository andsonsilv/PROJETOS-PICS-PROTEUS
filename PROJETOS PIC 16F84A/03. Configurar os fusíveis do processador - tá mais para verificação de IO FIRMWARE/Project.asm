
_main:

;Project.c,1 :: 		void main(){
;Project.c,3 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;Project.c,4 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Project.c,6 :: 		while(1){
L_main0:
;Project.c,7 :: 		PORTB++;
	INCF       PORTB+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Project.c,8 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
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
;Project.c,9 :: 		}
	GOTO       L_main0
;Project.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
