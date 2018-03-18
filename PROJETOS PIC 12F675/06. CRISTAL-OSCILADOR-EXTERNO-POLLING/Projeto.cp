#line 1 "C:/Users/Antônio/Desktop/PROJETOS PIC 12F675/06. CRISTAL-OSCILADOR-EXTERNO-POLLING/Projeto.c"
void main(){
 ANSEL = 0;
 CMCON = 7;

 TRISIO0_bit = 0;
 TRISIO1_bit = 0;

 while(1){
 GPIO.F0 = 1;
 delay_ms(10);
 GPIO.F0 = 0;
 delay_ms(10);

 GPIO.F1 = 1;
 delay_ms(1);
 GPIO.F1 = 0;
 delay_ms(1);
 }
}
