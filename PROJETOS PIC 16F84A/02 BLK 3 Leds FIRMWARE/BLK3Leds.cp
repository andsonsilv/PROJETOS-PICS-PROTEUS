#line 1 "C:/Users/Antônio/Desktop/PROJETOS PIC 16F84A/02 BLK 3 Leds FIRMWARE/BLK3Leds.c"
void main(){
 TRISB = 0b00000000;
 PORTB = 0b00000000;

 while(1){
 RB1_bit = 0;
 RB2_bit = 0;
 RB3_bit = 0;
 delay_ms(1000);
 RB1_bit = 0;
 RB2_bit = 0;
 RB3_bit = 1;
 delay_ms(1000);
 RB1_bit = 0;
 RB2_bit = 1;
 RB3_bit = 0;
 delay_ms(1000);
 RB1_bit = 0;
 RB2_bit = 1;
 RB3_bit = 1;
 delay_ms(1000);
 RB1_bit = 1;
 RB2_bit = 0;
 RB3_bit = 0;
 delay_ms(1000);
 RB1_bit = 1;
 RB2_bit = 0;
 RB3_bit = 1;
 delay_ms(1000);
 RB1_bit = 1;
 RB2_bit = 1;
 RB3_bit = 0;
 delay_ms(1000);
 RB1_bit = 1;
 RB2_bit = 1;
 RB3_bit = 1;
 delay_ms(1000);

 }
}
