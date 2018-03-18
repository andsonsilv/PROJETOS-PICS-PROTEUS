void main(){

        ANSEL = 0;        //desliga as entradas AD
        CMCON = 7;        //desliga os comparadores
        TRISIO4_bit = 1;
        TRISIO5_bit = 0;

        GPIO = 0;

        while(1){
                 if(GPIO.F4 == 1){
                            GPIO.F5 = 1;
                            delay_ms(2000);
                 }else{
                       GPIO.F5 = 0;
                 }
        }
}