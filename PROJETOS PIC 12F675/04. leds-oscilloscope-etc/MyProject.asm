
_main:

;MyProject.c,1 :: 		void main(){
;MyProject.c,3 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;MyProject.c,4 :: 		CMCON = 7;
	MOVLW      7
	MOVWF      CMCON+0
;MyProject.c,5 :: 		TRISIO0_bit = 0;
	BCF        TRISIO0_bit+0, BitPos(TRISIO0_bit+0)
;MyProject.c,6 :: 		TRISIO1_bit = 0;
	BCF        TRISIO1_bit+0, BitPos(TRISIO1_bit+0)
;MyProject.c,8 :: 		GPIO = 0;
	CLRF       GPIO+0
;MyProject.c,10 :: 		while(1){
L_main0:
;MyProject.c,11 :: 		GPIO.F0 = 1;
	BSF        GPIO+0, 0
;MyProject.c,12 :: 		GPIO.F1 = 0;
	BCF        GPIO+0, 1
;MyProject.c,13 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;MyProject.c,14 :: 		GPIO.F0 = 0;
	BCF        GPIO+0, 0
;MyProject.c,15 :: 		GPIO.F1 = 1;
	BSF        GPIO+0, 1
;MyProject.c,16 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;MyProject.c,17 :: 		}
	GOTO       L_main0
;MyProject.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
