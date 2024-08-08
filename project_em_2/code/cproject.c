#define LOGIC_LOW        0
#define LOGIC_HIGH       1

// ******* ports *********

#define   PORTA_ID       0
#define   PORTB_ID       1
#define   PORTC_ID       2
#define   PORTD_ID       3
#define   PORTE_ID       4

// ****** pins ***********

#define PIN0_ID          0
#define PIN1_ID          1
#define PIN2_ID          2
#define PIN3_ID          3
#define PIN4_ID          4
#define PIN5_ID          5
#define PIN6_ID          6
#define PIN7_ID          7

//******** masks **********

#define  READ_BIT(REG,PIN)  ((REG&(1<<PIN))>>PIN)  // read the value of pin
#define SET_BIT(REG,PIN)    (REG|=(1<<PIN))         // set pin and write on it 1
#define CLR_BIT(REG,PIN)   (REG&=~(1<<PIN))       // reset pin and write on it 0

//********** buttons **********************

#define manual    portb.b0
#define m_a       portb.b1

//********  button  of seven segment ******

#define cont1    portb.B2
#define cont2    portb.B3
#define cont3    portb.B4
#define cont4    portb.B5

//******* traffic light leds ********

#define  t1_r    porta.b0
#define  t1_y    porta.B1
#define  t1_g    porta.b2
#define  t2_r    porta.b3
#define  t2_y    portb.b7
#define  t2_g    portb.b6

//*****  funcyion to write 0 or 1 on specific pin ****

void gpio_writepin(int port_id , int pin_id , int value)
{ switch(port_id){
    case PORTA_ID:
      if(value == LOGIC_LOW)
           CLR_BIT(porta,pin_id);
      else if(value == LOGIC_HIGH )
            SET_BIT(porta,pin_id);
      break;
    case PORTB_ID:
      if(value == LOGIC_LOW)
           CLR_BIT(portb,pin_id);
      else if(value == LOGIC_HIGH )
            SET_BIT(portb,pin_id);
      break;
    case PORTC_ID:
      if(value == LOGIC_LOW)
           CLR_BIT(portc,pin_id);
      else if(value == LOGIC_HIGH )
            SET_BIT(portc,pin_id);
      break;
    case PORTD_ID:
      if(value == LOGIC_LOW)
           CLR_BIT(portd,pin_id);
      else if(value == LOGIC_HIGH )
            SET_BIT(portd,pin_id);
      break;
    case PORTE_ID:
      if(value == LOGIC_LOW)
           CLR_BIT(porte,pin_id);
      else if(value == LOGIC_HIGH )
            SET_BIT(porte,pin_id);
      break;
}
}
// ******  decoder function separate the value which we need to display it on seven segment to tens and units

void  seven_segment_DECODER(int value ,int PORT_ID ){
int units=value%10;  // give this value to first decoder in each traffic light
int tens=value/10;  // give this value to second decoder in each trafic
 gpio_writepin(PORT_ID,PIN0_ID,READ_BIT(units,0));
 gpio_writepin(PORT_ID,PIN1_ID,READ_BIT(units,1));
 gpio_writepin(PORT_ID,PIN2_ID,READ_BIT(units,2));
 gpio_writepin(PORT_ID,PIN3_ID,READ_BIT(units,3));
 gpio_writepin(PORT_ID,PIN4_ID,READ_BIT(tens,0));
 gpio_writepin(PORT_ID,PIN5_ID,READ_BIT(tens,1));
 gpio_writepin(PORT_ID,PIN6_ID,READ_BIT(tens,2));
 gpio_writepin(PORT_ID,PIN7_ID,READ_BIT(tens,3));
}

int v ;
int count =0 ;
void  interrupt() {
  if(INTCON.INTF==1){
    INTCON.INTF=0;
     count++;
}

}
void traficinit(){
adcon1=6;
trisc=0;
trisd=0;
trisa=0;

trisb=0b00000011;
INTCON.GIE= 1;
INTCON.INTE=1;
OPTION_REG.INTEDG=1;  // rising edge 0>>1
 cont2 =1;
 cont1=1;
 cont3=1;
 cont4=1;
 portc=0;
 portd=0;
  t1_r=0;
  t2_g=0;
  t1_g=0;
  t1_y=0;
  t2_r=0;
  t2_y=0;
 }

void manual_function();  // manual function

void main() {
  traficinit();
  manual_function();

}

void manual_function(){
 int i;
while(1){
if(m_a==0){     // automatic traffic works if the m_a button is not pressed
int j ; int fl =0;
 t1_r=1;
 t1_g=0;
 t1_y=0;
 t2_r=0;
 t2_y=1;
 t2_g=0;
 for( j =0 ; j<= 38 ; j++){
while(1){
 if(m_a==1){
   seven_segment_DECODER(0 ,2);
   seven_segment_DECODER(0 ,3 );
   if(  count ==0  && v >1){
       t1_r=0;
       t2_g=0;
       t1_g=0;
       t1_y=0;
       t2_r=0;
       t2_y=0;
               }
   else  if(count ==1) {

       t1_r=1;
       t1_g=0;
       t1_y=0;
       t2_r=0;

       for( i=0 ; i<4 ;i++){
          t2_g=0;
          t2_y=1;
      // seven_segment_DECODER(i ,2);
       seven_segment_DECODER(i ,3 );
       delay_ms(1000);

       }
       t2_g=1;
       t2_y=0;
      seven_segment_DECODER(0,2);
       seven_segment_DECODER(0 ,3 );
      while(m_a==1 && count ==1)
        while(portb.b0==1) ;
     }


     else if(count ==2){
        count=0 ;
       t1_r=0;
       t2_g=0;
       t2_r=1;
       t2_y=0;
       for( i=0 ; i<4 ;i++){

          t1_g=0;
          t1_y=1;
       seven_segment_DECODER(i ,2);
       delay_ms(1000);

       }

       t1_y=0;
       t1_g=1;
       seven_segment_DECODER(0,2);
       seven_segment_DECODER(0 ,3 );
        while(m_a==1 && count ==0){
        /*if(m_a==0){
        count++;} */
        while(portb.b0==1) ;     }

 }

   fl++;
     }

else{
   break; }
  }
v++;
if(fl>=1)
  break ;

if(j<=18){
     count=0;
  if(j>3 && j<=15){
     count=0;
      t2_g=1;
      t2_y=0;
      seven_segment_DECODER(j-3,3);
      seven_segment_DECODER(j,2);
      delay_ms(1000);
    }
  else if(j>15){
     count=0;
     t1_r=0;
     t1_y=1;
     t2_g=0;
     t2_r=1;
     seven_segment_DECODER(j-15,2);
     seven_segment_DECODER(j-15,3);
     delay_ms(1000);
    }

  else if ( j<=3){
     count=0;
    seven_segment_DECODER(j,3);
    seven_segment_DECODER(j,2);
     delay_ms(1000);
     }
  }
  else if(j>18){
     count=0;
     t1_y=0;
     t1_g=1;
     seven_segment_DECODER(j-18,2);
     seven_segment_DECODER(j-15,3);
     delay_ms(1000);
     }


  }
 }
else{
  seven_segment_DECODER(0 ,2);
  seven_segment_DECODER(0 ,3 );

    if(count ==1) {

       t1_r=1;
       t1_g=0;
       t1_y=0;
       t2_r=0;

       for( i=0 ; i<4 ;i++){
          t2_g=0;
          t2_y=1;
      // seven_segment_DECODER(i ,2);
       seven_segment_DECODER(i ,3 );
       delay_ms(1000);

       }
       t2_g=1;
       t2_y=0;
       seven_segment_DECODER(0,2);
       seven_segment_DECODER(0 ,3 );
      while(m_a==1 && count ==1)
        while(portb.b0==1) ;
     }


     else if(count ==2){
       count=0 ;
       t1_r=0;
       t2_g=0;
       t2_r=1;
       t2_y=0;
       for( i=0 ; i<4 ;i++){

          t1_g=0;
          t1_y=1;
       seven_segment_DECODER(i ,2);
      // seven_segment_DECODER(i ,3 );
       delay_ms(1000);

       }

       t1_y=0;
       t1_g=1;
       seven_segment_DECODER(0,2);
       seven_segment_DECODER(0 ,3 );
     while(m_a==1 && count ==0){
        while(portb.b0==1) ;  }



 }
 }
}
}