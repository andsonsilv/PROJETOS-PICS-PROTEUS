#line 1 "C:/Users/Ant�nio/Desktop/PROJETOS PIC 16F84A/03. Configurar os fus�veis do processador FIRMWARE/Project.c"
void main(){

 TRISB = 0b00000000;
 PORTB = 0b00000000;

 while(1){
 PORTB++;
 delay_ms(300);
 }
}
