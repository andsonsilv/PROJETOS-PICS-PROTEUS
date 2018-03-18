
_main:

;Projeto.c,1 :: 		void main(){
;Projeto.c,2 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;Projeto.c,3 :: 		CMCON = 7;
	MOVLW      7
	MOVWF      CMCON+0
;Projeto.c,5 :: 		TRISIO0_bit = 0;
	BCF        TRISIO0_bit+0, BitPos(TRISIO0_bit+0)
;Projeto.c,6 :: 		TRISIO1_bit = 0;
	BCF        TRISIO1_bit+0, BitPos(TRISIO1_bit+0)
;Projeto.c,8 :: 		while(1){
L_main0:
;Projeto.c,9 :: 		GPIO.F0 = 1;
	BSF        GPIO+0, 0
;Projeto.c,10 :: 		delay_ms(10);
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
;Projeto.c,11 :: 		GPIO.F0 = 0;
	BCF        GPIO+0, 0
;Projeto.c,12 :: 		delay_ms(10);
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
;Projeto.c,14 :: 		GPIO.F1 = 1;
	BSF        GPIO+0, 1
;Projeto.c,15 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;Projeto.c,16 :: 		GPIO.F1 = 0;
	BCF        GPIO+0, 1
;Projeto.c,17 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;Projeto.c,18 :: 		}
	GOTO       L_main0
;Projeto.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
