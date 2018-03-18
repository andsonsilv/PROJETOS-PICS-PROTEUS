#line 1 "C:/Users/Antônio/Desktop/PROJETOS PIC 16F628A/08. CONTROLE-SERVO-MOTORES/Projeto.c"







void servo1_horario();
void servo1_centro();
void servo1_antihorario();

void main(){

 CMCON = 0x07;
 TRISA = 0x03;
 TRISB = 0x00;
 PORTA = 0x03;
 PORTB = 0x00;

 while(1){

 if( RA1_bit  == 0x00 &&  RA0_bit  == 0x01) servo1_horario();

 else if( RA0_bit  == 0x00 &&  RA1_bit  == 0x01) servo1_antihorario();

 else servo1_centro();
 }
}
void servo1_horario(){
  RB0_bit  = 0x00;
 delay_us(17700);
  RB0_bit  = 0x01;
 delay_us(2300);
}
void servo1_centro(){
  RB0_bit  = 0x00;
 delay_us(18500);
  RB0_bit  = 0x01;
 delay_us(1500);
}
void servo1_antihorario(){
  RB0_bit  = 0x00;
 delay_us(19200);
  RB0_bit  = 0x01;
 delay_us(800);
}
