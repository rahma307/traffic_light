#line 1 "C:/Users/hp/Desktop/project_embedded/project_em_2/code/cproject.c"
#line 52 "C:/Users/hp/Desktop/project_embedded/project_em_2/code/cproject.c"
void gpio_writepin(int port_id , int pin_id , int value)
{ switch(port_id){
 case  0 :
 if(value ==  0 )
  (porta&=~(1<<pin_id)) ;
 else if(value ==  1  )
  (porta|=(1<<pin_id)) ;
 break;
 case  1 :
 if(value ==  0 )
  (portb&=~(1<<pin_id)) ;
 else if(value ==  1  )
  (portb|=(1<<pin_id)) ;
 break;
 case  2 :
 if(value ==  0 )
  (portc&=~(1<<pin_id)) ;
 else if(value ==  1  )
  (portc|=(1<<pin_id)) ;
 break;
 case  3 :
 if(value ==  0 )
  (portd&=~(1<<pin_id)) ;
 else if(value ==  1  )
  (portd|=(1<<pin_id)) ;
 break;
 case  4 :
 if(value ==  0 )
  (porte&=~(1<<pin_id)) ;
 else if(value ==  1  )
  (porte|=(1<<pin_id)) ;
 break;
}
}


void seven_segment_DECODER(int value ,int PORT_ID ){
int units=value%10;
int tens=value/10;
 gpio_writepin(PORT_ID, 0 , ((units&(1<<0))>>0) );
 gpio_writepin(PORT_ID, 1 , ((units&(1<<1))>>1) );
 gpio_writepin(PORT_ID, 2 , ((units&(1<<2))>>2) );
 gpio_writepin(PORT_ID, 3 , ((units&(1<<3))>>3) );
 gpio_writepin(PORT_ID, 4 , ((tens&(1<<0))>>0) );
 gpio_writepin(PORT_ID, 5 , ((tens&(1<<1))>>1) );
 gpio_writepin(PORT_ID, 6 , ((tens&(1<<2))>>2) );
 gpio_writepin(PORT_ID, 7 , ((tens&(1<<3))>>3) );
}

int v ;
int count =0 ;
void interrupt() {
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
OPTION_REG.INTEDG=1;
  portb.B3  =1;
  portb.B2 =1;
  portb.B4 =1;
  portb.B5 =1;
 portc=0;
 portd=0;
  porta.b0 =0;
  portb.b6 =0;
  porta.b2 =0;
  porta.B1 =0;
  porta.b3 =0;
  portb.b7 =0;
 }

void manual_function();

void main() {
 traficinit();
 manual_function();

}

void manual_function(){
 int i;
while(1){
if( portb.b1 ==0){
int j ; int fl =0;
  porta.b0 =1;
  porta.b2 =0;
  porta.B1 =0;
  porta.b3 =0;
  portb.b7 =1;
  portb.b6 =0;
 for( j =0 ; j<= 38 ; j++){
while(1){
 if( portb.b1 ==1){
 seven_segment_DECODER(0 ,2);
 seven_segment_DECODER(0 ,3 );
 if( count ==0 && v >1){
  porta.b0 =0;
  portb.b6 =0;
  porta.b2 =0;
  porta.B1 =0;
  porta.b3 =0;
  portb.b7 =0;
 }
 else if(count ==1) {

  porta.b0 =1;
  porta.b2 =0;
  porta.B1 =0;
  porta.b3 =0;

 for( i=0 ; i<4 ;i++){
  portb.b6 =0;
  portb.b7 =1;

 seven_segment_DECODER(i ,3 );
 delay_ms(1000);

 }
  portb.b6 =1;
  portb.b7 =0;
 seven_segment_DECODER(0,2);
 seven_segment_DECODER(0 ,3 );
 while( portb.b1 ==1 && count ==1)
 while(portb.b0==1) ;
 }


 else if(count ==2){
 count=0 ;
  porta.b0 =0;
  portb.b6 =0;
  porta.b3 =1;
  portb.b7 =0;
 for( i=0 ; i<4 ;i++){

  porta.b2 =0;
  porta.B1 =1;
 seven_segment_DECODER(i ,2);
 delay_ms(1000);

 }

  porta.B1 =0;
  porta.b2 =1;
 seven_segment_DECODER(0,2);
 seven_segment_DECODER(0 ,3 );
 while( portb.b1 ==1 && count ==0){
#line 212 "C:/Users/hp/Desktop/project_embedded/project_em_2/code/cproject.c"
 while(portb.b0==1) ; }

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
  portb.b6 =1;
  portb.b7 =0;
 seven_segment_DECODER(j-3,3);
 seven_segment_DECODER(j,2);
 delay_ms(1000);
 }
 else if(j>15){
 count=0;
  porta.b0 =0;
  porta.B1 =1;
  portb.b6 =0;
  porta.b3 =1;
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
  porta.B1 =0;
  porta.b2 =1;
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

  porta.b0 =1;
  porta.b2 =0;
  porta.B1 =0;
  porta.b3 =0;

 for( i=0 ; i<4 ;i++){
  portb.b6 =0;
  portb.b7 =1;

 seven_segment_DECODER(i ,3 );
 delay_ms(1000);

 }
  portb.b6 =1;
  portb.b7 =0;
 seven_segment_DECODER(0,2);
 seven_segment_DECODER(0 ,3 );
 while( portb.b1 ==1 && count ==1)
 while(portb.b0==1) ;
 }


 else if(count ==2){
 count=0 ;
  porta.b0 =0;
  portb.b6 =0;
  porta.b3 =1;
  portb.b7 =0;
 for( i=0 ; i<4 ;i++){

  porta.b2 =0;
  porta.B1 =1;
 seven_segment_DECODER(i ,2);

 delay_ms(1000);

 }

  porta.B1 =0;
  porta.b2 =1;
 seven_segment_DECODER(0,2);
 seven_segment_DECODER(0 ,3 );
 while( portb.b1 ==1 && count ==0){
 while(portb.b0==1) ; }



 }
 }
}
}
