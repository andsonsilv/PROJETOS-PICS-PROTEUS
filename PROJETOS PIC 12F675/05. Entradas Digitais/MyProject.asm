
_main:

;MyProject.c,1 :: 		void main(){
;MyProject.c,3 :: 		ANSEL = 0;        //desliga as entradas AD
	CLRF       ANSEL+0
;MyProject.c,4 :: 		CMCON = 7;        //desliga os comparadores
	MOVLW      7
	MOVWF      CMCON+0
;MyProject.c,5 :: 		TRISIO4_bit = 1;
	BSF        TRISIO4_bit+0, BitPos(TRISIO4_bit+0)
;MyProject.c,6 :: 		TRISIO5_bit = 0;
	BCF        TRISIO5_bit+0, BitPos(TRISIO5_bit+0)
;MyProject.c,8 :: 		GPIO = 0;
	CLRF       GPIO+0
;MyProject.c,10 :: 		while(1){
L_main0:
;MyProject.c,11 :: 		if(GPIO.F4 == 1){
	BTFSS      GPIO+0, 4
	GOTO       L_main2
;MyProject.c,12 :: 		GPIO.F5 = 1;
	BSF        GPIO+0, 5
;MyProject.c,13 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;MyProject.c,14 :: 		}else{
	GOTO       L_main4
L_main2:
;MyProject.c,15 :: 		GPIO.F5 = 0;
	BCF        GPIO+0, 5
;MyProject.c,16 :: 		}
L_main4:
;MyProject.c,17 :: 		}
	GOTO       L_main0
;MyProject.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
