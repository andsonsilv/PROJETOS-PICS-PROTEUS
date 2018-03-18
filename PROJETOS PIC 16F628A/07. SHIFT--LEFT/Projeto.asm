
_main:

;Projeto.c,3 :: 		void main(){
;Projeto.c,5 :: 		TRISB = 0;
	CLRF       TRISB+0
;Projeto.c,6 :: 		PORTB = 0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;Projeto.c,8 :: 		while(1){
L_main0:
;Projeto.c,10 :: 		PORTB = control;
	MOVF       _control+0, 0
	MOVWF      PORTB+0
;Projeto.c,11 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;Projeto.c,13 :: 		control = control << 1;
	MOVF       _control+0, 0
	MOVWF      R1+0
	MOVF       _control+1, 0
	MOVWF      R1+1
	RLF        R1+0, 1
	RLF        R1+1, 1
	BCF        R1+0, 0
	MOVF       R1+0, 0
	MOVWF      _control+0
	MOVF       R1+1, 0
	MOVWF      _control+1
;Projeto.c,15 :: 		if(control == 0) control = 0xFF;
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVLW      0
	XORWF      R1+0, 0
L__main5:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
	MOVLW      255
	MOVWF      _control+0
	CLRF       _control+1
L_main3:
;Projeto.c,17 :: 		}
	GOTO       L_main0
;Projeto.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
