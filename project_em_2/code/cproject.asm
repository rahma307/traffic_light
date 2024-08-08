
_gpio_writepin:

;cproject.c,52 :: 		void gpio_writepin(int port_id , int pin_id , int value)
;cproject.c,53 :: 		{ switch(port_id){
	GOTO       L_gpio_writepin0
;cproject.c,54 :: 		case PORTA_ID:
L_gpio_writepin2:
;cproject.c,55 :: 		if(value == LOGIC_LOW)
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin106
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+0, 0
L__gpio_writepin106:
	BTFSS      STATUS+0, 2
	GOTO       L_gpio_writepin3
;cproject.c,56 :: 		CLR_BIT(porta,pin_id);
	MOVF       FARG_gpio_writepin_pin_id+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__gpio_writepin107:
	BTFSC      STATUS+0, 2
	GOTO       L__gpio_writepin108
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__gpio_writepin107
L__gpio_writepin108:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      PORTA+0, 1
	GOTO       L_gpio_writepin4
L_gpio_writepin3:
;cproject.c,57 :: 		else if(value == LOGIC_HIGH )
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin109
	MOVLW      1
	XORWF      FARG_gpio_writepin_value+0, 0
L__gpio_writepin109:
	BTFSS      STATUS+0, 2
	GOTO       L_gpio_writepin5
;cproject.c,58 :: 		SET_BIT(porta,pin_id);
	MOVF       FARG_gpio_writepin_pin_id+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__gpio_writepin110:
	BTFSC      STATUS+0, 2
	GOTO       L__gpio_writepin111
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__gpio_writepin110
L__gpio_writepin111:
	MOVF       R0+0, 0
	IORWF      PORTA+0, 1
L_gpio_writepin5:
L_gpio_writepin4:
;cproject.c,59 :: 		break;
	GOTO       L_gpio_writepin1
;cproject.c,60 :: 		case PORTB_ID:
L_gpio_writepin6:
;cproject.c,61 :: 		if(value == LOGIC_LOW)
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin112
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+0, 0
L__gpio_writepin112:
	BTFSS      STATUS+0, 2
	GOTO       L_gpio_writepin7
;cproject.c,62 :: 		CLR_BIT(portb,pin_id);
	MOVF       FARG_gpio_writepin_pin_id+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__gpio_writepin113:
	BTFSC      STATUS+0, 2
	GOTO       L__gpio_writepin114
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__gpio_writepin113
L__gpio_writepin114:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      PORTB+0, 1
	GOTO       L_gpio_writepin8
L_gpio_writepin7:
;cproject.c,63 :: 		else if(value == LOGIC_HIGH )
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin115
	MOVLW      1
	XORWF      FARG_gpio_writepin_value+0, 0
L__gpio_writepin115:
	BTFSS      STATUS+0, 2
	GOTO       L_gpio_writepin9
;cproject.c,64 :: 		SET_BIT(portb,pin_id);
	MOVF       FARG_gpio_writepin_pin_id+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__gpio_writepin116:
	BTFSC      STATUS+0, 2
	GOTO       L__gpio_writepin117
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__gpio_writepin116
L__gpio_writepin117:
	MOVF       R0+0, 0
	IORWF      PORTB+0, 1
L_gpio_writepin9:
L_gpio_writepin8:
;cproject.c,65 :: 		break;
	GOTO       L_gpio_writepin1
;cproject.c,66 :: 		case PORTC_ID:
L_gpio_writepin10:
;cproject.c,67 :: 		if(value == LOGIC_LOW)
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin118
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+0, 0
L__gpio_writepin118:
	BTFSS      STATUS+0, 2
	GOTO       L_gpio_writepin11
;cproject.c,68 :: 		CLR_BIT(portc,pin_id);
	MOVF       FARG_gpio_writepin_pin_id+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__gpio_writepin119:
	BTFSC      STATUS+0, 2
	GOTO       L__gpio_writepin120
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__gpio_writepin119
L__gpio_writepin120:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      PORTC+0, 1
	GOTO       L_gpio_writepin12
L_gpio_writepin11:
;cproject.c,69 :: 		else if(value == LOGIC_HIGH )
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin121
	MOVLW      1
	XORWF      FARG_gpio_writepin_value+0, 0
L__gpio_writepin121:
	BTFSS      STATUS+0, 2
	GOTO       L_gpio_writepin13
;cproject.c,70 :: 		SET_BIT(portc,pin_id);
	MOVF       FARG_gpio_writepin_pin_id+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__gpio_writepin122:
	BTFSC      STATUS+0, 2
	GOTO       L__gpio_writepin123
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__gpio_writepin122
L__gpio_writepin123:
	MOVF       R0+0, 0
	IORWF      PORTC+0, 1
L_gpio_writepin13:
L_gpio_writepin12:
;cproject.c,71 :: 		break;
	GOTO       L_gpio_writepin1
;cproject.c,72 :: 		case PORTD_ID:
L_gpio_writepin14:
;cproject.c,73 :: 		if(value == LOGIC_LOW)
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin124
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+0, 0
L__gpio_writepin124:
	BTFSS      STATUS+0, 2
	GOTO       L_gpio_writepin15
;cproject.c,74 :: 		CLR_BIT(portd,pin_id);
	MOVF       FARG_gpio_writepin_pin_id+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__gpio_writepin125:
	BTFSC      STATUS+0, 2
	GOTO       L__gpio_writepin126
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__gpio_writepin125
L__gpio_writepin126:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      PORTD+0, 1
	GOTO       L_gpio_writepin16
L_gpio_writepin15:
;cproject.c,75 :: 		else if(value == LOGIC_HIGH )
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin127
	MOVLW      1
	XORWF      FARG_gpio_writepin_value+0, 0
L__gpio_writepin127:
	BTFSS      STATUS+0, 2
	GOTO       L_gpio_writepin17
;cproject.c,76 :: 		SET_BIT(portd,pin_id);
	MOVF       FARG_gpio_writepin_pin_id+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__gpio_writepin128:
	BTFSC      STATUS+0, 2
	GOTO       L__gpio_writepin129
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__gpio_writepin128
L__gpio_writepin129:
	MOVF       R0+0, 0
	IORWF      PORTD+0, 1
L_gpio_writepin17:
L_gpio_writepin16:
;cproject.c,77 :: 		break;
	GOTO       L_gpio_writepin1
;cproject.c,78 :: 		case PORTE_ID:
L_gpio_writepin18:
;cproject.c,79 :: 		if(value == LOGIC_LOW)
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin130
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+0, 0
L__gpio_writepin130:
	BTFSS      STATUS+0, 2
	GOTO       L_gpio_writepin19
;cproject.c,80 :: 		CLR_BIT(porte,pin_id);
	MOVF       FARG_gpio_writepin_pin_id+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__gpio_writepin131:
	BTFSC      STATUS+0, 2
	GOTO       L__gpio_writepin132
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__gpio_writepin131
L__gpio_writepin132:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      PORTE+0, 1
	GOTO       L_gpio_writepin20
L_gpio_writepin19:
;cproject.c,81 :: 		else if(value == LOGIC_HIGH )
	MOVLW      0
	XORWF      FARG_gpio_writepin_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin133
	MOVLW      1
	XORWF      FARG_gpio_writepin_value+0, 0
L__gpio_writepin133:
	BTFSS      STATUS+0, 2
	GOTO       L_gpio_writepin21
;cproject.c,82 :: 		SET_BIT(porte,pin_id);
	MOVF       FARG_gpio_writepin_pin_id+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__gpio_writepin134:
	BTFSC      STATUS+0, 2
	GOTO       L__gpio_writepin135
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__gpio_writepin134
L__gpio_writepin135:
	MOVF       R0+0, 0
	IORWF      PORTE+0, 1
L_gpio_writepin21:
L_gpio_writepin20:
;cproject.c,83 :: 		break;
	GOTO       L_gpio_writepin1
;cproject.c,84 :: 		}
L_gpio_writepin0:
	MOVLW      0
	XORWF      FARG_gpio_writepin_port_id+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin136
	MOVLW      0
	XORWF      FARG_gpio_writepin_port_id+0, 0
L__gpio_writepin136:
	BTFSC      STATUS+0, 2
	GOTO       L_gpio_writepin2
	MOVLW      0
	XORWF      FARG_gpio_writepin_port_id+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin137
	MOVLW      1
	XORWF      FARG_gpio_writepin_port_id+0, 0
L__gpio_writepin137:
	BTFSC      STATUS+0, 2
	GOTO       L_gpio_writepin6
	MOVLW      0
	XORWF      FARG_gpio_writepin_port_id+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin138
	MOVLW      2
	XORWF      FARG_gpio_writepin_port_id+0, 0
L__gpio_writepin138:
	BTFSC      STATUS+0, 2
	GOTO       L_gpio_writepin10
	MOVLW      0
	XORWF      FARG_gpio_writepin_port_id+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin139
	MOVLW      3
	XORWF      FARG_gpio_writepin_port_id+0, 0
L__gpio_writepin139:
	BTFSC      STATUS+0, 2
	GOTO       L_gpio_writepin14
	MOVLW      0
	XORWF      FARG_gpio_writepin_port_id+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gpio_writepin140
	MOVLW      4
	XORWF      FARG_gpio_writepin_port_id+0, 0
L__gpio_writepin140:
	BTFSC      STATUS+0, 2
	GOTO       L_gpio_writepin18
L_gpio_writepin1:
;cproject.c,85 :: 		}
L_end_gpio_writepin:
	RETURN
; end of _gpio_writepin

_seven_segment_DECODER:

;cproject.c,88 :: 		void  seven_segment_DECODER(int value ,int PORT_ID ){
;cproject.c,89 :: 		int units=value%10;  // give this value to first decoder in each traffic light
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_seven_segment_DECODER_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_seven_segment_DECODER_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FLOC__seven_segment_DECODER+0
	MOVF       R0+1, 0
	MOVWF      FLOC__seven_segment_DECODER+1
	MOVF       FLOC__seven_segment_DECODER+0, 0
	MOVWF      seven_segment_DECODER_units_L0+0
	MOVF       FLOC__seven_segment_DECODER+1, 0
	MOVWF      seven_segment_DECODER_units_L0+1
;cproject.c,90 :: 		int tens=value/10;  // give this value to second decoder in each trafic
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_seven_segment_DECODER_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_seven_segment_DECODER_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      seven_segment_DECODER_tens_L0+0
	MOVF       R0+1, 0
	MOVWF      seven_segment_DECODER_tens_L0+1
;cproject.c,91 :: 		gpio_writepin(PORT_ID,PIN0_ID,READ_BIT(units,0));
	MOVF       FARG_seven_segment_DECODER_PORT_ID+0, 0
	MOVWF      FARG_gpio_writepin_port_id+0
	MOVF       FARG_seven_segment_DECODER_PORT_ID+1, 0
	MOVWF      FARG_gpio_writepin_port_id+1
	CLRF       FARG_gpio_writepin_pin_id+0
	CLRF       FARG_gpio_writepin_pin_id+1
	MOVLW      1
	ANDWF      FLOC__seven_segment_DECODER+0, 0
	MOVWF      FARG_gpio_writepin_value+0
	MOVF       FLOC__seven_segment_DECODER+1, 0
	MOVWF      FARG_gpio_writepin_value+1
	MOVLW      0
	ANDWF      FARG_gpio_writepin_value+1, 1
	CALL       _gpio_writepin+0
;cproject.c,92 :: 		gpio_writepin(PORT_ID,PIN1_ID,READ_BIT(units,1));
	MOVF       FARG_seven_segment_DECODER_PORT_ID+0, 0
	MOVWF      FARG_gpio_writepin_port_id+0
	MOVF       FARG_seven_segment_DECODER_PORT_ID+1, 0
	MOVWF      FARG_gpio_writepin_port_id+1
	MOVLW      1
	MOVWF      FARG_gpio_writepin_pin_id+0
	MOVLW      0
	MOVWF      FARG_gpio_writepin_pin_id+1
	MOVLW      2
	ANDWF      seven_segment_DECODER_units_L0+0, 0
	MOVWF      FARG_gpio_writepin_value+0
	MOVF       seven_segment_DECODER_units_L0+1, 0
	MOVWF      FARG_gpio_writepin_value+1
	MOVLW      0
	ANDWF      FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+0, 1
	BCF        FARG_gpio_writepin_value+1, 7
	BTFSC      FARG_gpio_writepin_value+1, 6
	BSF        FARG_gpio_writepin_value+1, 7
	CALL       _gpio_writepin+0
;cproject.c,93 :: 		gpio_writepin(PORT_ID,PIN2_ID,READ_BIT(units,2));
	MOVF       FARG_seven_segment_DECODER_PORT_ID+0, 0
	MOVWF      FARG_gpio_writepin_port_id+0
	MOVF       FARG_seven_segment_DECODER_PORT_ID+1, 0
	MOVWF      FARG_gpio_writepin_port_id+1
	MOVLW      2
	MOVWF      FARG_gpio_writepin_pin_id+0
	MOVLW      0
	MOVWF      FARG_gpio_writepin_pin_id+1
	MOVLW      4
	ANDWF      seven_segment_DECODER_units_L0+0, 0
	MOVWF      FARG_gpio_writepin_value+0
	MOVF       seven_segment_DECODER_units_L0+1, 0
	MOVWF      FARG_gpio_writepin_value+1
	MOVLW      0
	ANDWF      FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+0, 1
	BCF        FARG_gpio_writepin_value+1, 7
	BTFSC      FARG_gpio_writepin_value+1, 6
	BSF        FARG_gpio_writepin_value+1, 7
	RRF        FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+0, 1
	BCF        FARG_gpio_writepin_value+1, 7
	BTFSC      FARG_gpio_writepin_value+1, 6
	BSF        FARG_gpio_writepin_value+1, 7
	CALL       _gpio_writepin+0
;cproject.c,94 :: 		gpio_writepin(PORT_ID,PIN3_ID,READ_BIT(units,3));
	MOVF       FARG_seven_segment_DECODER_PORT_ID+0, 0
	MOVWF      FARG_gpio_writepin_port_id+0
	MOVF       FARG_seven_segment_DECODER_PORT_ID+1, 0
	MOVWF      FARG_gpio_writepin_port_id+1
	MOVLW      3
	MOVWF      FARG_gpio_writepin_pin_id+0
	MOVLW      0
	MOVWF      FARG_gpio_writepin_pin_id+1
	MOVLW      8
	ANDWF      seven_segment_DECODER_units_L0+0, 0
	MOVWF      FARG_gpio_writepin_value+0
	MOVF       seven_segment_DECODER_units_L0+1, 0
	MOVWF      FARG_gpio_writepin_value+1
	MOVLW      0
	ANDWF      FARG_gpio_writepin_value+1, 1
	MOVLW      3
	MOVWF      R0+0
	MOVF       R0+0, 0
L__seven_segment_DECODER142:
	BTFSC      STATUS+0, 2
	GOTO       L__seven_segment_DECODER143
	RRF        FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+0, 1
	BCF        FARG_gpio_writepin_value+1, 7
	BTFSC      FARG_gpio_writepin_value+1, 6
	BSF        FARG_gpio_writepin_value+1, 7
	ADDLW      255
	GOTO       L__seven_segment_DECODER142
L__seven_segment_DECODER143:
	CALL       _gpio_writepin+0
;cproject.c,95 :: 		gpio_writepin(PORT_ID,PIN4_ID,READ_BIT(tens,0));
	MOVF       FARG_seven_segment_DECODER_PORT_ID+0, 0
	MOVWF      FARG_gpio_writepin_port_id+0
	MOVF       FARG_seven_segment_DECODER_PORT_ID+1, 0
	MOVWF      FARG_gpio_writepin_port_id+1
	MOVLW      4
	MOVWF      FARG_gpio_writepin_pin_id+0
	MOVLW      0
	MOVWF      FARG_gpio_writepin_pin_id+1
	MOVLW      1
	ANDWF      seven_segment_DECODER_tens_L0+0, 0
	MOVWF      FARG_gpio_writepin_value+0
	MOVF       seven_segment_DECODER_tens_L0+1, 0
	MOVWF      FARG_gpio_writepin_value+1
	MOVLW      0
	ANDWF      FARG_gpio_writepin_value+1, 1
	CALL       _gpio_writepin+0
;cproject.c,96 :: 		gpio_writepin(PORT_ID,PIN5_ID,READ_BIT(tens,1));
	MOVF       FARG_seven_segment_DECODER_PORT_ID+0, 0
	MOVWF      FARG_gpio_writepin_port_id+0
	MOVF       FARG_seven_segment_DECODER_PORT_ID+1, 0
	MOVWF      FARG_gpio_writepin_port_id+1
	MOVLW      5
	MOVWF      FARG_gpio_writepin_pin_id+0
	MOVLW      0
	MOVWF      FARG_gpio_writepin_pin_id+1
	MOVLW      2
	ANDWF      seven_segment_DECODER_tens_L0+0, 0
	MOVWF      FARG_gpio_writepin_value+0
	MOVF       seven_segment_DECODER_tens_L0+1, 0
	MOVWF      FARG_gpio_writepin_value+1
	MOVLW      0
	ANDWF      FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+0, 1
	BCF        FARG_gpio_writepin_value+1, 7
	BTFSC      FARG_gpio_writepin_value+1, 6
	BSF        FARG_gpio_writepin_value+1, 7
	CALL       _gpio_writepin+0
;cproject.c,97 :: 		gpio_writepin(PORT_ID,PIN6_ID,READ_BIT(tens,2));
	MOVF       FARG_seven_segment_DECODER_PORT_ID+0, 0
	MOVWF      FARG_gpio_writepin_port_id+0
	MOVF       FARG_seven_segment_DECODER_PORT_ID+1, 0
	MOVWF      FARG_gpio_writepin_port_id+1
	MOVLW      6
	MOVWF      FARG_gpio_writepin_pin_id+0
	MOVLW      0
	MOVWF      FARG_gpio_writepin_pin_id+1
	MOVLW      4
	ANDWF      seven_segment_DECODER_tens_L0+0, 0
	MOVWF      FARG_gpio_writepin_value+0
	MOVF       seven_segment_DECODER_tens_L0+1, 0
	MOVWF      FARG_gpio_writepin_value+1
	MOVLW      0
	ANDWF      FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+0, 1
	BCF        FARG_gpio_writepin_value+1, 7
	BTFSC      FARG_gpio_writepin_value+1, 6
	BSF        FARG_gpio_writepin_value+1, 7
	RRF        FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+0, 1
	BCF        FARG_gpio_writepin_value+1, 7
	BTFSC      FARG_gpio_writepin_value+1, 6
	BSF        FARG_gpio_writepin_value+1, 7
	CALL       _gpio_writepin+0
;cproject.c,98 :: 		gpio_writepin(PORT_ID,PIN7_ID,READ_BIT(tens,3));
	MOVF       FARG_seven_segment_DECODER_PORT_ID+0, 0
	MOVWF      FARG_gpio_writepin_port_id+0
	MOVF       FARG_seven_segment_DECODER_PORT_ID+1, 0
	MOVWF      FARG_gpio_writepin_port_id+1
	MOVLW      7
	MOVWF      FARG_gpio_writepin_pin_id+0
	MOVLW      0
	MOVWF      FARG_gpio_writepin_pin_id+1
	MOVLW      8
	ANDWF      seven_segment_DECODER_tens_L0+0, 0
	MOVWF      FARG_gpio_writepin_value+0
	MOVF       seven_segment_DECODER_tens_L0+1, 0
	MOVWF      FARG_gpio_writepin_value+1
	MOVLW      0
	ANDWF      FARG_gpio_writepin_value+1, 1
	MOVLW      3
	MOVWF      R0+0
	MOVF       R0+0, 0
L__seven_segment_DECODER144:
	BTFSC      STATUS+0, 2
	GOTO       L__seven_segment_DECODER145
	RRF        FARG_gpio_writepin_value+1, 1
	RRF        FARG_gpio_writepin_value+0, 1
	BCF        FARG_gpio_writepin_value+1, 7
	BTFSC      FARG_gpio_writepin_value+1, 6
	BSF        FARG_gpio_writepin_value+1, 7
	ADDLW      255
	GOTO       L__seven_segment_DECODER144
L__seven_segment_DECODER145:
	CALL       _gpio_writepin+0
;cproject.c,99 :: 		}
L_end_seven_segment_DECODER:
	RETURN
; end of _seven_segment_DECODER

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;cproject.c,103 :: 		void  interrupt() {
;cproject.c,104 :: 		if(INTCON.INTF==1){
	BTFSS      INTCON+0, 1
	GOTO       L_interrupt22
;cproject.c,105 :: 		INTCON.INTF=0;
	BCF        INTCON+0, 1
;cproject.c,106 :: 		count++;
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;cproject.c,107 :: 		}
L_interrupt22:
;cproject.c,109 :: 		}
L_end_interrupt:
L__interrupt147:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_traficinit:

;cproject.c,110 :: 		void traficinit(){
;cproject.c,111 :: 		adcon1=6;
	MOVLW      6
	MOVWF      ADCON1+0
;cproject.c,112 :: 		trisc=0;
	CLRF       TRISC+0
;cproject.c,113 :: 		trisd=0;
	CLRF       TRISD+0
;cproject.c,114 :: 		trisa=0;
	CLRF       TRISA+0
;cproject.c,116 :: 		trisb=0b00000011;
	MOVLW      3
	MOVWF      TRISB+0
;cproject.c,117 :: 		INTCON.GIE= 1;
	BSF        INTCON+0, 7
;cproject.c,118 :: 		INTCON.INTE=1;
	BSF        INTCON+0, 4
;cproject.c,119 :: 		OPTION_REG.INTEDG=1;  // rising edge 0>>1
	BSF        OPTION_REG+0, 6
;cproject.c,120 :: 		cont2 =1;
	BSF        PORTB+0, 3
;cproject.c,121 :: 		cont1=1;
	BSF        PORTB+0, 2
;cproject.c,122 :: 		cont3=1;
	BSF        PORTB+0, 4
;cproject.c,123 :: 		cont4=1;
	BSF        PORTB+0, 5
;cproject.c,124 :: 		portc=0;
	CLRF       PORTC+0
;cproject.c,125 :: 		portd=0;
	CLRF       PORTD+0
;cproject.c,126 :: 		t1_r=0;
	BCF        PORTA+0, 0
;cproject.c,127 :: 		t2_g=0;
	BCF        PORTB+0, 6
;cproject.c,128 :: 		t1_g=0;
	BCF        PORTA+0, 2
;cproject.c,129 :: 		t1_y=0;
	BCF        PORTA+0, 1
;cproject.c,130 :: 		t2_r=0;
	BCF        PORTA+0, 3
;cproject.c,131 :: 		t2_y=0;
	BCF        PORTB+0, 7
;cproject.c,132 :: 		}
L_end_traficinit:
	RETURN
; end of _traficinit

_main:

;cproject.c,136 :: 		void main() {
;cproject.c,137 :: 		traficinit();
	CALL       _traficinit+0
;cproject.c,138 :: 		manual_function();
	CALL       _manual_function+0
;cproject.c,140 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_manual_function:

;cproject.c,142 :: 		void manual_function(){
;cproject.c,144 :: 		while(1){
L_manual_function23:
;cproject.c,145 :: 		if(m_a==0){     // automatic traffic works if the m_a button is not pressed
	BTFSC      PORTB+0, 1
	GOTO       L_manual_function25
;cproject.c,146 :: 		int j ; int fl =0;
	CLRF       manual_function_fl_L2+0
	CLRF       manual_function_fl_L2+1
;cproject.c,147 :: 		t1_r=1;
	BSF        PORTA+0, 0
;cproject.c,148 :: 		t1_g=0;
	BCF        PORTA+0, 2
;cproject.c,149 :: 		t1_y=0;
	BCF        PORTA+0, 1
;cproject.c,150 :: 		t2_r=0;
	BCF        PORTA+0, 3
;cproject.c,151 :: 		t2_y=1;
	BSF        PORTB+0, 7
;cproject.c,152 :: 		t2_g=0;
	BCF        PORTB+0, 6
;cproject.c,153 :: 		for( j =0 ; j<= 38 ; j++){
	CLRF       manual_function_j_L2+0
	CLRF       manual_function_j_L2+1
L_manual_function26:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      manual_function_j_L2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function151
	MOVF       manual_function_j_L2+0, 0
	SUBLW      38
L__manual_function151:
	BTFSS      STATUS+0, 0
	GOTO       L_manual_function27
;cproject.c,154 :: 		while(1){
L_manual_function29:
;cproject.c,155 :: 		if(m_a==1){
	BTFSS      PORTB+0, 1
	GOTO       L_manual_function31
;cproject.c,156 :: 		seven_segment_DECODER(0 ,2);
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,157 :: 		seven_segment_DECODER(0 ,3 );
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,158 :: 		if(  count ==0  && v >1){
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function152
	MOVLW      0
	XORWF      _count+0, 0
L__manual_function152:
	BTFSS      STATUS+0, 2
	GOTO       L_manual_function34
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _v+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function153
	MOVF       _v+0, 0
	SUBLW      1
L__manual_function153:
	BTFSC      STATUS+0, 0
	GOTO       L_manual_function34
L__manual_function104:
;cproject.c,159 :: 		t1_r=0;
	BCF        PORTA+0, 0
;cproject.c,160 :: 		t2_g=0;
	BCF        PORTB+0, 6
;cproject.c,161 :: 		t1_g=0;
	BCF        PORTA+0, 2
;cproject.c,162 :: 		t1_y=0;
	BCF        PORTA+0, 1
;cproject.c,163 :: 		t2_r=0;
	BCF        PORTA+0, 3
;cproject.c,164 :: 		t2_y=0;
	BCF        PORTB+0, 7
;cproject.c,165 :: 		}
	GOTO       L_manual_function35
L_manual_function34:
;cproject.c,166 :: 		else  if(count ==1) {
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function154
	MOVLW      1
	XORWF      _count+0, 0
L__manual_function154:
	BTFSS      STATUS+0, 2
	GOTO       L_manual_function36
;cproject.c,168 :: 		t1_r=1;
	BSF        PORTA+0, 0
;cproject.c,169 :: 		t1_g=0;
	BCF        PORTA+0, 2
;cproject.c,170 :: 		t1_y=0;
	BCF        PORTA+0, 1
;cproject.c,171 :: 		t2_r=0;
	BCF        PORTA+0, 3
;cproject.c,173 :: 		for( i=0 ; i<4 ;i++){
	CLRF       manual_function_i_L0+0
	CLRF       manual_function_i_L0+1
L_manual_function37:
	MOVLW      128
	XORWF      manual_function_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function155
	MOVLW      4
	SUBWF      manual_function_i_L0+0, 0
L__manual_function155:
	BTFSC      STATUS+0, 0
	GOTO       L_manual_function38
;cproject.c,174 :: 		t2_g=0;
	BCF        PORTB+0, 6
;cproject.c,175 :: 		t2_y=1;
	BSF        PORTB+0, 7
;cproject.c,177 :: 		seven_segment_DECODER(i ,3 );
	MOVF       manual_function_i_L0+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVF       manual_function_i_L0+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,178 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_manual_function40:
	DECFSZ     R13+0, 1
	GOTO       L_manual_function40
	DECFSZ     R12+0, 1
	GOTO       L_manual_function40
	DECFSZ     R11+0, 1
	GOTO       L_manual_function40
	NOP
	NOP
;cproject.c,173 :: 		for( i=0 ; i<4 ;i++){
	INCF       manual_function_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       manual_function_i_L0+1, 1
;cproject.c,180 :: 		}
	GOTO       L_manual_function37
L_manual_function38:
;cproject.c,181 :: 		t2_g=1;
	BSF        PORTB+0, 6
;cproject.c,182 :: 		t2_y=0;
	BCF        PORTB+0, 7
;cproject.c,183 :: 		seven_segment_DECODER(0,2);
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,184 :: 		seven_segment_DECODER(0 ,3 );
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,185 :: 		while(m_a==1 && count ==1)
L_manual_function41:
	BTFSS      PORTB+0, 1
	GOTO       L_manual_function42
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function156
	MOVLW      1
	XORWF      _count+0, 0
L__manual_function156:
	BTFSS      STATUS+0, 2
	GOTO       L_manual_function42
L__manual_function103:
;cproject.c,186 :: 		while(portb.b0==1) ;
L_manual_function45:
	BTFSS      PORTB+0, 0
	GOTO       L_manual_function46
	GOTO       L_manual_function45
L_manual_function46:
	GOTO       L_manual_function41
L_manual_function42:
;cproject.c,187 :: 		}
	GOTO       L_manual_function47
L_manual_function36:
;cproject.c,190 :: 		else if(count ==2){
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function157
	MOVLW      2
	XORWF      _count+0, 0
L__manual_function157:
	BTFSS      STATUS+0, 2
	GOTO       L_manual_function48
;cproject.c,191 :: 		count=0 ;
	CLRF       _count+0
	CLRF       _count+1
;cproject.c,192 :: 		t1_r=0;
	BCF        PORTA+0, 0
;cproject.c,193 :: 		t2_g=0;
	BCF        PORTB+0, 6
;cproject.c,194 :: 		t2_r=1;
	BSF        PORTA+0, 3
;cproject.c,195 :: 		t2_y=0;
	BCF        PORTB+0, 7
;cproject.c,196 :: 		for( i=0 ; i<4 ;i++){
	CLRF       manual_function_i_L0+0
	CLRF       manual_function_i_L0+1
L_manual_function49:
	MOVLW      128
	XORWF      manual_function_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function158
	MOVLW      4
	SUBWF      manual_function_i_L0+0, 0
L__manual_function158:
	BTFSC      STATUS+0, 0
	GOTO       L_manual_function50
;cproject.c,198 :: 		t1_g=0;
	BCF        PORTA+0, 2
;cproject.c,199 :: 		t1_y=1;
	BSF        PORTA+0, 1
;cproject.c,200 :: 		seven_segment_DECODER(i ,2);
	MOVF       manual_function_i_L0+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVF       manual_function_i_L0+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,201 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_manual_function52:
	DECFSZ     R13+0, 1
	GOTO       L_manual_function52
	DECFSZ     R12+0, 1
	GOTO       L_manual_function52
	DECFSZ     R11+0, 1
	GOTO       L_manual_function52
	NOP
	NOP
;cproject.c,196 :: 		for( i=0 ; i<4 ;i++){
	INCF       manual_function_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       manual_function_i_L0+1, 1
;cproject.c,203 :: 		}
	GOTO       L_manual_function49
L_manual_function50:
;cproject.c,205 :: 		t1_y=0;
	BCF        PORTA+0, 1
;cproject.c,206 :: 		t1_g=1;
	BSF        PORTA+0, 2
;cproject.c,207 :: 		seven_segment_DECODER(0,2);
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,208 :: 		seven_segment_DECODER(0 ,3 );
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,209 :: 		while(m_a==1 && count ==0){
L_manual_function53:
	BTFSS      PORTB+0, 1
	GOTO       L_manual_function54
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function159
	MOVLW      0
	XORWF      _count+0, 0
L__manual_function159:
	BTFSS      STATUS+0, 2
	GOTO       L_manual_function54
L__manual_function102:
;cproject.c,212 :: 		while(portb.b0==1) ;     }
L_manual_function57:
	BTFSS      PORTB+0, 0
	GOTO       L_manual_function58
	GOTO       L_manual_function57
L_manual_function58:
	GOTO       L_manual_function53
L_manual_function54:
;cproject.c,214 :: 		}
L_manual_function48:
L_manual_function47:
L_manual_function35:
;cproject.c,216 :: 		fl++;
	INCF       manual_function_fl_L2+0, 1
	BTFSC      STATUS+0, 2
	INCF       manual_function_fl_L2+1, 1
;cproject.c,217 :: 		}
	GOTO       L_manual_function59
L_manual_function31:
;cproject.c,220 :: 		break; }
	GOTO       L_manual_function30
L_manual_function59:
;cproject.c,221 :: 		}
	GOTO       L_manual_function29
L_manual_function30:
;cproject.c,222 :: 		v++;
	INCF       _v+0, 1
	BTFSC      STATUS+0, 2
	INCF       _v+1, 1
;cproject.c,223 :: 		if(fl>=1)
	MOVLW      128
	XORWF      manual_function_fl_L2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function160
	MOVLW      1
	SUBWF      manual_function_fl_L2+0, 0
L__manual_function160:
	BTFSS      STATUS+0, 0
	GOTO       L_manual_function60
;cproject.c,224 :: 		break ;
	GOTO       L_manual_function27
L_manual_function60:
;cproject.c,226 :: 		if(j<=18){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      manual_function_j_L2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function161
	MOVF       manual_function_j_L2+0, 0
	SUBLW      18
L__manual_function161:
	BTFSS      STATUS+0, 0
	GOTO       L_manual_function61
;cproject.c,227 :: 		count=0;
	CLRF       _count+0
	CLRF       _count+1
;cproject.c,228 :: 		if(j>3 && j<=15){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      manual_function_j_L2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function162
	MOVF       manual_function_j_L2+0, 0
	SUBLW      3
L__manual_function162:
	BTFSC      STATUS+0, 0
	GOTO       L_manual_function64
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      manual_function_j_L2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function163
	MOVF       manual_function_j_L2+0, 0
	SUBLW      15
L__manual_function163:
	BTFSS      STATUS+0, 0
	GOTO       L_manual_function64
L__manual_function101:
;cproject.c,229 :: 		count=0;
	CLRF       _count+0
	CLRF       _count+1
;cproject.c,230 :: 		t2_g=1;
	BSF        PORTB+0, 6
;cproject.c,231 :: 		t2_y=0;
	BCF        PORTB+0, 7
;cproject.c,232 :: 		seven_segment_DECODER(j-3,3);
	MOVLW      3
	SUBWF      manual_function_j_L2+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      manual_function_j_L2+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,233 :: 		seven_segment_DECODER(j,2);
	MOVF       manual_function_j_L2+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVF       manual_function_j_L2+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,234 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_manual_function65:
	DECFSZ     R13+0, 1
	GOTO       L_manual_function65
	DECFSZ     R12+0, 1
	GOTO       L_manual_function65
	DECFSZ     R11+0, 1
	GOTO       L_manual_function65
	NOP
	NOP
;cproject.c,235 :: 		}
	GOTO       L_manual_function66
L_manual_function64:
;cproject.c,236 :: 		else if(j>15){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      manual_function_j_L2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function164
	MOVF       manual_function_j_L2+0, 0
	SUBLW      15
L__manual_function164:
	BTFSC      STATUS+0, 0
	GOTO       L_manual_function67
;cproject.c,237 :: 		count=0;
	CLRF       _count+0
	CLRF       _count+1
;cproject.c,238 :: 		t1_r=0;
	BCF        PORTA+0, 0
;cproject.c,239 :: 		t1_y=1;
	BSF        PORTA+0, 1
;cproject.c,240 :: 		t2_g=0;
	BCF        PORTB+0, 6
;cproject.c,241 :: 		t2_r=1;
	BSF        PORTA+0, 3
;cproject.c,242 :: 		seven_segment_DECODER(j-15,2);
	MOVLW      15
	SUBWF      manual_function_j_L2+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      manual_function_j_L2+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,243 :: 		seven_segment_DECODER(j-15,3);
	MOVLW      15
	SUBWF      manual_function_j_L2+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      manual_function_j_L2+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,244 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_manual_function68:
	DECFSZ     R13+0, 1
	GOTO       L_manual_function68
	DECFSZ     R12+0, 1
	GOTO       L_manual_function68
	DECFSZ     R11+0, 1
	GOTO       L_manual_function68
	NOP
	NOP
;cproject.c,245 :: 		}
	GOTO       L_manual_function69
L_manual_function67:
;cproject.c,247 :: 		else if ( j<=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      manual_function_j_L2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function165
	MOVF       manual_function_j_L2+0, 0
	SUBLW      3
L__manual_function165:
	BTFSS      STATUS+0, 0
	GOTO       L_manual_function70
;cproject.c,248 :: 		count=0;
	CLRF       _count+0
	CLRF       _count+1
;cproject.c,249 :: 		seven_segment_DECODER(j,3);
	MOVF       manual_function_j_L2+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVF       manual_function_j_L2+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,250 :: 		seven_segment_DECODER(j,2);
	MOVF       manual_function_j_L2+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVF       manual_function_j_L2+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,251 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_manual_function71:
	DECFSZ     R13+0, 1
	GOTO       L_manual_function71
	DECFSZ     R12+0, 1
	GOTO       L_manual_function71
	DECFSZ     R11+0, 1
	GOTO       L_manual_function71
	NOP
	NOP
;cproject.c,252 :: 		}
L_manual_function70:
L_manual_function69:
L_manual_function66:
;cproject.c,253 :: 		}
	GOTO       L_manual_function72
L_manual_function61:
;cproject.c,254 :: 		else if(j>18){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      manual_function_j_L2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function166
	MOVF       manual_function_j_L2+0, 0
	SUBLW      18
L__manual_function166:
	BTFSC      STATUS+0, 0
	GOTO       L_manual_function73
;cproject.c,255 :: 		count=0;
	CLRF       _count+0
	CLRF       _count+1
;cproject.c,256 :: 		t1_y=0;
	BCF        PORTA+0, 1
;cproject.c,257 :: 		t1_g=1;
	BSF        PORTA+0, 2
;cproject.c,258 :: 		seven_segment_DECODER(j-18,2);
	MOVLW      18
	SUBWF      manual_function_j_L2+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      manual_function_j_L2+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,259 :: 		seven_segment_DECODER(j-15,3);
	MOVLW      15
	SUBWF      manual_function_j_L2+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      manual_function_j_L2+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,260 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_manual_function74:
	DECFSZ     R13+0, 1
	GOTO       L_manual_function74
	DECFSZ     R12+0, 1
	GOTO       L_manual_function74
	DECFSZ     R11+0, 1
	GOTO       L_manual_function74
	NOP
	NOP
;cproject.c,261 :: 		}
L_manual_function73:
L_manual_function72:
;cproject.c,153 :: 		for( j =0 ; j<= 38 ; j++){
	INCF       manual_function_j_L2+0, 1
	BTFSC      STATUS+0, 2
	INCF       manual_function_j_L2+1, 1
;cproject.c,264 :: 		}
	GOTO       L_manual_function26
L_manual_function27:
;cproject.c,265 :: 		}
	GOTO       L_manual_function75
L_manual_function25:
;cproject.c,267 :: 		seven_segment_DECODER(0 ,2);
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,268 :: 		seven_segment_DECODER(0 ,3 );
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,270 :: 		if(count ==1) {
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function167
	MOVLW      1
	XORWF      _count+0, 0
L__manual_function167:
	BTFSS      STATUS+0, 2
	GOTO       L_manual_function76
;cproject.c,272 :: 		t1_r=1;
	BSF        PORTA+0, 0
;cproject.c,273 :: 		t1_g=0;
	BCF        PORTA+0, 2
;cproject.c,274 :: 		t1_y=0;
	BCF        PORTA+0, 1
;cproject.c,275 :: 		t2_r=0;
	BCF        PORTA+0, 3
;cproject.c,277 :: 		for( i=0 ; i<4 ;i++){
	CLRF       manual_function_i_L0+0
	CLRF       manual_function_i_L0+1
L_manual_function77:
	MOVLW      128
	XORWF      manual_function_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function168
	MOVLW      4
	SUBWF      manual_function_i_L0+0, 0
L__manual_function168:
	BTFSC      STATUS+0, 0
	GOTO       L_manual_function78
;cproject.c,278 :: 		t2_g=0;
	BCF        PORTB+0, 6
;cproject.c,279 :: 		t2_y=1;
	BSF        PORTB+0, 7
;cproject.c,281 :: 		seven_segment_DECODER(i ,3 );
	MOVF       manual_function_i_L0+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVF       manual_function_i_L0+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,282 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_manual_function80:
	DECFSZ     R13+0, 1
	GOTO       L_manual_function80
	DECFSZ     R12+0, 1
	GOTO       L_manual_function80
	DECFSZ     R11+0, 1
	GOTO       L_manual_function80
	NOP
	NOP
;cproject.c,277 :: 		for( i=0 ; i<4 ;i++){
	INCF       manual_function_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       manual_function_i_L0+1, 1
;cproject.c,284 :: 		}
	GOTO       L_manual_function77
L_manual_function78:
;cproject.c,285 :: 		t2_g=1;
	BSF        PORTB+0, 6
;cproject.c,286 :: 		t2_y=0;
	BCF        PORTB+0, 7
;cproject.c,287 :: 		seven_segment_DECODER(0,2);
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,288 :: 		seven_segment_DECODER(0 ,3 );
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,289 :: 		while(m_a==1 && count ==1)
L_manual_function81:
	BTFSS      PORTB+0, 1
	GOTO       L_manual_function82
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function169
	MOVLW      1
	XORWF      _count+0, 0
L__manual_function169:
	BTFSS      STATUS+0, 2
	GOTO       L_manual_function82
L__manual_function100:
;cproject.c,290 :: 		while(portb.b0==1) ;
L_manual_function85:
	BTFSS      PORTB+0, 0
	GOTO       L_manual_function86
	GOTO       L_manual_function85
L_manual_function86:
	GOTO       L_manual_function81
L_manual_function82:
;cproject.c,291 :: 		}
	GOTO       L_manual_function87
L_manual_function76:
;cproject.c,294 :: 		else if(count ==2){
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function170
	MOVLW      2
	XORWF      _count+0, 0
L__manual_function170:
	BTFSS      STATUS+0, 2
	GOTO       L_manual_function88
;cproject.c,295 :: 		count=0 ;
	CLRF       _count+0
	CLRF       _count+1
;cproject.c,296 :: 		t1_r=0;
	BCF        PORTA+0, 0
;cproject.c,297 :: 		t2_g=0;
	BCF        PORTB+0, 6
;cproject.c,298 :: 		t2_r=1;
	BSF        PORTA+0, 3
;cproject.c,299 :: 		t2_y=0;
	BCF        PORTB+0, 7
;cproject.c,300 :: 		for( i=0 ; i<4 ;i++){
	CLRF       manual_function_i_L0+0
	CLRF       manual_function_i_L0+1
L_manual_function89:
	MOVLW      128
	XORWF      manual_function_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function171
	MOVLW      4
	SUBWF      manual_function_i_L0+0, 0
L__manual_function171:
	BTFSC      STATUS+0, 0
	GOTO       L_manual_function90
;cproject.c,302 :: 		t1_g=0;
	BCF        PORTA+0, 2
;cproject.c,303 :: 		t1_y=1;
	BSF        PORTA+0, 1
;cproject.c,304 :: 		seven_segment_DECODER(i ,2);
	MOVF       manual_function_i_L0+0, 0
	MOVWF      FARG_seven_segment_DECODER_value+0
	MOVF       manual_function_i_L0+1, 0
	MOVWF      FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,306 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_manual_function92:
	DECFSZ     R13+0, 1
	GOTO       L_manual_function92
	DECFSZ     R12+0, 1
	GOTO       L_manual_function92
	DECFSZ     R11+0, 1
	GOTO       L_manual_function92
	NOP
	NOP
;cproject.c,300 :: 		for( i=0 ; i<4 ;i++){
	INCF       manual_function_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       manual_function_i_L0+1, 1
;cproject.c,308 :: 		}
	GOTO       L_manual_function89
L_manual_function90:
;cproject.c,310 :: 		t1_y=0;
	BCF        PORTA+0, 1
;cproject.c,311 :: 		t1_g=1;
	BSF        PORTA+0, 2
;cproject.c,312 :: 		seven_segment_DECODER(0,2);
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      2
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,313 :: 		seven_segment_DECODER(0 ,3 );
	CLRF       FARG_seven_segment_DECODER_value+0
	CLRF       FARG_seven_segment_DECODER_value+1
	MOVLW      3
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+0
	MOVLW      0
	MOVWF      FARG_seven_segment_DECODER_PORT_ID+1
	CALL       _seven_segment_DECODER+0
;cproject.c,314 :: 		while(m_a==1 && count ==0){
L_manual_function93:
	BTFSS      PORTB+0, 1
	GOTO       L_manual_function94
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual_function172
	MOVLW      0
	XORWF      _count+0, 0
L__manual_function172:
	BTFSS      STATUS+0, 2
	GOTO       L_manual_function94
L__manual_function99:
;cproject.c,315 :: 		while(portb.b0==1) ;  }
L_manual_function97:
	BTFSS      PORTB+0, 0
	GOTO       L_manual_function98
	GOTO       L_manual_function97
L_manual_function98:
	GOTO       L_manual_function93
L_manual_function94:
;cproject.c,319 :: 		}
L_manual_function88:
L_manual_function87:
;cproject.c,320 :: 		}
L_manual_function75:
;cproject.c,321 :: 		}
	GOTO       L_manual_function23
;cproject.c,322 :: 		}
L_end_manual_function:
	RETURN
; end of _manual_function
