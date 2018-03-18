
_main:

;Projeto.c,12 :: 		void main(){
;Projeto.c,14 :: 		CMCON = 0x07; //desliga comparadores do PIC
	MOVLW      7
	MOVWF      CMCON+0
;Projeto.c,15 :: 		TRISA = 0x03; //RA0 e RA1 como entrada digital
	MOVLW      3
	MOVWF      TRISA+0
;Projeto.c,16 :: 		TRISB = 0x00; //PORTB como saída digital
	CLRF       TRISB+0
;Projeto.c,17 :: 		PORTA = 0x03; //RA0 e RA1 iniciam em high
	MOVLW      3
	MOVWF      PORTA+0
;Projeto.c,18 :: 		PORTB = 0x00; //PORTB inicia todo em low
	CLRF       PORTB+0
;Projeto.c,20 :: 		while(1){
L_main0:
;Projeto.c,22 :: 		if(S1 == 0x00 && S2 == 0x01) servo1_horario();
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main4
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main4
L__main17:
	CALL       _servo1_horario+0
	GOTO       L_main5
L_main4:
;Projeto.c,24 :: 		else if(S2 == 0x00 && S1 == 0x01) servo1_antihorario();
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main8
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main8
L__main16:
	CALL       _servo1_antihorario+0
	GOTO       L_main9
L_main8:
;Projeto.c,26 :: 		else servo1_centro();
	CALL       _servo1_centro+0
L_main9:
L_main5:
;Projeto.c,27 :: 		}
	GOTO       L_main0
;Projeto.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_servo1_horario:

;Projeto.c,29 :: 		void servo1_horario(){
;Projeto.c,30 :: 		servo1 = 0x00;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Projeto.c,31 :: 		delay_us(17700);
	MOVLW      46
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_servo1_horario10:
	DECFSZ     R13+0, 1
	GOTO       L_servo1_horario10
	DECFSZ     R12+0, 1
	GOTO       L_servo1_horario10
	NOP
;Projeto.c,32 :: 		servo1 = 0x01;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Projeto.c,33 :: 		delay_us(2300); //pulso de 2ms
	MOVLW      6
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_servo1_horario11:
	DECFSZ     R13+0, 1
	GOTO       L_servo1_horario11
	DECFSZ     R12+0, 1
	GOTO       L_servo1_horario11
	NOP
;Projeto.c,34 :: 		}
L_end_servo1_horario:
	RETURN
; end of _servo1_horario

_servo1_centro:

;Projeto.c,35 :: 		void servo1_centro(){
;Projeto.c,36 :: 		servo1 = 0x00;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Projeto.c,37 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_servo1_centro12:
	DECFSZ     R13+0, 1
	GOTO       L_servo1_centro12
	DECFSZ     R12+0, 1
	GOTO       L_servo1_centro12
	NOP
	NOP
;Projeto.c,38 :: 		servo1 = 0x01;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Projeto.c,39 :: 		delay_us(1500); //pulso de 1,5ms
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_servo1_centro13:
	DECFSZ     R13+0, 1
	GOTO       L_servo1_centro13
	DECFSZ     R12+0, 1
	GOTO       L_servo1_centro13
	NOP
;Projeto.c,40 :: 		}
L_end_servo1_centro:
	RETURN
; end of _servo1_centro

_servo1_antihorario:

;Projeto.c,41 :: 		void servo1_antihorario(){
;Projeto.c,42 :: 		servo1 = 0x00;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Projeto.c,43 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_servo1_antihorario14:
	DECFSZ     R13+0, 1
	GOTO       L_servo1_antihorario14
	DECFSZ     R12+0, 1
	GOTO       L_servo1_antihorario14
	NOP
	NOP
;Projeto.c,44 :: 		servo1 = 0x01;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Projeto.c,45 :: 		delay_us(800); //pulso de 1ms
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_servo1_antihorario15:
	DECFSZ     R13+0, 1
	GOTO       L_servo1_antihorario15
	DECFSZ     R12+0, 1
	GOTO       L_servo1_antihorario15
	NOP
;Projeto.c,46 :: 		}
L_end_servo1_antihorario:
	RETURN
; end of _servo1_antihorario
