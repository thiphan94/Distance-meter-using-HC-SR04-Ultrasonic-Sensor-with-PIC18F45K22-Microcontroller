
_afficheChiffre:

;MyProject.c,4 :: 		void afficheChiffre(char chiffre,int position){
;MyProject.c,5 :: 		LATA = 0x01 << position;                 //Registre de sortie active les 4 afficheurs 7segments en fonction de la position
	MOVF        FARG_afficheChiffre_position+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__afficheChiffre32:
	BZ          L__afficheChiffre33
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__afficheChiffre32
L__afficheChiffre33:
	MOVF        R0, 0 
	MOVWF       LATA+0 
;MyProject.c,6 :: 		switch(chiffre){
	GOTO        L_afficheChiffre0
;MyProject.c,7 :: 		case 0:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre2:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,8 :: 		LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 0;LATD7_bit = 0;
	BSF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BCF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,9 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,10 :: 		case 1:LATD0_bit = 0;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
L_afficheChiffre3:
	BCF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BCF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,11 :: 		LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 0;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BCF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,12 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,13 :: 		case 2:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 0;LATD3_bit = 1;
L_afficheChiffre4:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BCF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,14 :: 		LATD4_bit = 1;LATD5_bit = 0;LATD6_bit = 1;LATD7_bit = 0;
	BSF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,15 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,16 :: 		case 3:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre5:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,17 :: 		LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,18 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,19 :: 		case 4:LATD0_bit = 0;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
L_afficheChiffre6:
	BCF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BCF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,20 :: 		LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,21 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,22 :: 		case 5:LATD0_bit = 1;LATD1_bit = 0;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre7:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BCF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,23 :: 		LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,24 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,25 :: 		case 6:LATD0_bit = 1;LATD1_bit = 0;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre8:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BCF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,26 :: 		LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BSF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,27 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,28 :: 		case 7:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
L_afficheChiffre9:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BCF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,29 :: 		LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 0;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BCF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BCF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,30 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,31 :: 		case 8:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre10:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,32 :: 		LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BSF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,33 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,34 :: 		case 9:LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
L_afficheChiffre11:
	BSF         LATD0_bit+0, BitPos(LATD0_bit+0) 
	BSF         LATD1_bit+0, BitPos(LATD1_bit+0) 
	BSF         LATD2_bit+0, BitPos(LATD2_bit+0) 
	BSF         LATD3_bit+0, BitPos(LATD3_bit+0) 
;MyProject.c,35 :: 		LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
	BCF         LATD4_bit+0, BitPos(LATD4_bit+0) 
	BSF         LATD5_bit+0, BitPos(LATD5_bit+0) 
	BSF         LATD6_bit+0, BitPos(LATD6_bit+0) 
	BCF         LATD7_bit+0, BitPos(LATD7_bit+0) 
;MyProject.c,36 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,37 :: 		default:
L_afficheChiffre12:
;MyProject.c,38 :: 		break;
	GOTO        L_afficheChiffre1
;MyProject.c,39 :: 		}
L_afficheChiffre0:
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre2
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre3
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre4
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre5
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre6
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre7
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre8
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre9
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre10
	MOVF        FARG_afficheChiffre_chiffre+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_afficheChiffre11
	GOTO        L_afficheChiffre12
L_afficheChiffre1:
;MyProject.c,40 :: 		}
L_end_afficheChiffre:
	RETURN      0
; end of _afficheChiffre

_afficheNombre:

;MyProject.c,43 :: 		void afficheNombre(int var){
;MyProject.c,45 :: 		chiffre3 = var/1000;
	MOVLW       232
	MOVWF       R4 
	MOVLW       3
	MOVWF       R5 
	MOVF        FARG_afficheNombre_var+0, 0 
	MOVWF       R0 
	MOVF        FARG_afficheNombre_var+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       afficheNombre_chiffre3_L0+0 
;MyProject.c,47 :: 		var -= chiffre3*1000;
	MOVLW       0
	MOVWF       R1 
	MOVLW       232
	MOVWF       R4 
	MOVLW       3
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        R0, 0 
	SUBWF       FARG_afficheNombre_var+0, 0 
	MOVWF       FLOC__afficheNombre+0 
	MOVF        R1, 0 
	SUBWFB      FARG_afficheNombre_var+1, 0 
	MOVWF       FLOC__afficheNombre+1 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       FARG_afficheNombre_var+0 
	MOVF        FLOC__afficheNombre+1, 0 
	MOVWF       FARG_afficheNombre_var+1 
;MyProject.c,48 :: 		chiffre2 = var/100;
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       R0 
	MOVF        FLOC__afficheNombre+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       afficheNombre_chiffre2_L0+0 
;MyProject.c,50 :: 		var -= chiffre2*100;
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        PRODH+0, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	SUBWF       FLOC__afficheNombre+0, 1 
	MOVF        R1, 0 
	SUBWFB      FLOC__afficheNombre+1, 1 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       FARG_afficheNombre_var+0 
	MOVF        FLOC__afficheNombre+1, 0 
	MOVWF       FARG_afficheNombre_var+1 
;MyProject.c,51 :: 		chiffre1 = var/10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FLOC__afficheNombre+0, 0 
	MOVWF       R0 
	MOVF        FLOC__afficheNombre+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       afficheNombre_chiffre1_L0+0 
;MyProject.c,53 :: 		var -= chiffre1*10;
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        PRODH+0, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	SUBWF       FLOC__afficheNombre+0, 0 
	MOVWF       R0 
	MOVF        R1, 0 
	SUBWFB      FLOC__afficheNombre+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       FARG_afficheNombre_var+0 
	MOVF        R1, 0 
	MOVWF       FARG_afficheNombre_var+1 
;MyProject.c,56 :: 		afficheChiffre(chiffre0,0);
	MOVF        R0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	CLRF        FARG_afficheChiffre_position+0 
	CLRF        FARG_afficheChiffre_position+1 
	CALL        _afficheChiffre+0, 0
;MyProject.c,57 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_afficheNombre13:
	DECFSZ      R13, 1, 1
	BRA         L_afficheNombre13
	DECFSZ      R12, 1, 1
	BRA         L_afficheNombre13
	NOP
	NOP
;MyProject.c,58 :: 		afficheChiffre(chiffre1,1);
	MOVF        afficheNombre_chiffre1_L0+0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	MOVLW       1
	MOVWF       FARG_afficheChiffre_position+0 
	MOVLW       0
	MOVWF       FARG_afficheChiffre_position+1 
	CALL        _afficheChiffre+0, 0
;MyProject.c,59 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_afficheNombre14:
	DECFSZ      R13, 1, 1
	BRA         L_afficheNombre14
	DECFSZ      R12, 1, 1
	BRA         L_afficheNombre14
	NOP
	NOP
;MyProject.c,60 :: 		afficheChiffre(chiffre2,2);
	MOVF        afficheNombre_chiffre2_L0+0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	MOVLW       2
	MOVWF       FARG_afficheChiffre_position+0 
	MOVLW       0
	MOVWF       FARG_afficheChiffre_position+1 
	CALL        _afficheChiffre+0, 0
;MyProject.c,61 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_afficheNombre15:
	DECFSZ      R13, 1, 1
	BRA         L_afficheNombre15
	DECFSZ      R12, 1, 1
	BRA         L_afficheNombre15
	NOP
	NOP
;MyProject.c,62 :: 		afficheChiffre(chiffre3,3);
	MOVF        afficheNombre_chiffre3_L0+0, 0 
	MOVWF       FARG_afficheChiffre_chiffre+0 
	MOVLW       3
	MOVWF       FARG_afficheChiffre_position+0 
	MOVLW       0
	MOVWF       FARG_afficheChiffre_position+1 
	CALL        _afficheChiffre+0, 0
;MyProject.c,63 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_afficheNombre16:
	DECFSZ      R13, 1, 1
	BRA         L_afficheNombre16
	DECFSZ      R12, 1, 1
	BRA         L_afficheNombre16
	NOP
	NOP
;MyProject.c,64 :: 		}
L_end_afficheNombre:
	RETURN      0
; end of _afficheNombre

_main:

;MyProject.c,69 :: 		void main(void) {
;MyProject.c,70 :: 		compte = 0;
	CLRF        _compte+0 
	CLRF        _compte+1 
;MyProject.c,71 :: 		nombreaffiche = 0;
	CLRF        _nombreaffiche+0 
	CLRF        _nombreaffiche+1 
;MyProject.c,72 :: 		etape = 0;              // initialisation de l'�tape impilsion et calcul
	CLRF        _etape+0 
	CLRF        _etape+1 
;MyProject.c,74 :: 		TRISA  = 0x00;          //
	CLRF        TRISA+0 
;MyProject.c,75 :: 		TRISB  = 0x01;          //   Entr�e Microcontr�leur   echo RB0 trigger RB1
	MOVLW       1
	MOVWF       TRISB+0 
;MyProject.c,76 :: 		TRISC  = 0x00;          //
	CLRF        TRISC+0 
;MyProject.c,77 :: 		TRISD  = 0x00;
	CLRF        TRISD+0 
;MyProject.c,79 :: 		LATA = 0x00;            // attribution des valeurs
	CLRF        LATA+0 
;MyProject.c,80 :: 		LATB = 0x00;
	CLRF        LATB+0 
;MyProject.c,81 :: 		LATD = 0x00;
	CLRF        LATD+0 
;MyProject.c,82 :: 		LATC = 0x00;
	CLRF        LATC+0 
;MyProject.c,83 :: 		ANSELA = 0;
	CLRF        ANSELA+0 
;MyProject.c,84 :: 		ANSELB = 0;
	CLRF        ANSELB+0 
;MyProject.c,85 :: 		ANSELC = 0;          // Configure PORTC pins as digital
	CLRF        ANSELC+0 
;MyProject.c,86 :: 		ANSELD = 0;
	CLRF        ANSELD+0 
;MyProject.c,88 :: 		TRISC.B3 = 1;
	BSF         TRISC+0, 3 
;MyProject.c,89 :: 		TRISC.B4 = 1;
	BSF         TRISC+0, 4 
;MyProject.c,90 :: 		TRISC.B6 = 1;
	BSF         TRISC+0, 6 
;MyProject.c,91 :: 		TRISC.B7 = 1;
	BSF         TRISC+0, 7 
;MyProject.c,93 :: 		UART1_Init(9600);   // initialisation de UART
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       207
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;MyProject.c,94 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	DECFSZ      R12, 1, 1
	BRA         L_main17
	DECFSZ      R11, 1, 1
	BRA         L_main17
	NOP
	NOP
;MyProject.c,103 :: 		while(1){
L_main18:
;MyProject.c,104 :: 		switch(etape) {
	GOTO        L_main20
;MyProject.c,105 :: 		case 0:  // g�n�ration d'une impulsion vers US
L_main22:
;MyProject.c,106 :: 		LATB1_bit = 1;
	BSF         LATB1_bit+0, BitPos(LATB1_bit+0) 
;MyProject.c,107 :: 		compte = 0;
	CLRF        _compte+0 
	CLRF        _compte+1 
;MyProject.c,108 :: 		etape++ ;
	INFSNZ      _etape+0, 1 
	INCF        _etape+1, 1 
;MyProject.c,109 :: 		break;
	GOTO        L_main21
;MyProject.c,110 :: 		case 1: // attente 1ms et retour � z�ro
L_main23:
;MyProject.c,111 :: 		Delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_main24:
	DECFSZ      R13, 1, 1
	BRA         L_main24
	DECFSZ      R12, 1, 1
	BRA         L_main24
	NOP
	NOP
;MyProject.c,112 :: 		LATB1_bit = 0;
	BCF         LATB1_bit+0, BitPos(LATB1_bit+0) 
;MyProject.c,113 :: 		etape++ ;
	INFSNZ      _etape+0, 1 
	INCF        _etape+1, 1 
;MyProject.c,114 :: 		break;
	GOTO        L_main21
;MyProject.c,115 :: 		case 2 : // v�rifier si RB0 =1 (existence d'un ECHO sur le PORTB puis attendre 10ms
L_main25:
;MyProject.c,116 :: 		if(PORTB & 0x01){ // v�rification de la valeur du registre d'entr�e  je teste l'echo
	BTFSS       PORTB+0, 0 
	GOTO        L_main26
;MyProject.c,117 :: 		while(PORTB & 0x01){
L_main27:
	BTFSS       PORTB+0, 0 
	GOTO        L_main28
;MyProject.c,118 :: 		delay_us(10);
	MOVLW       6
	MOVWF       R13, 0
L_main29:
	DECFSZ      R13, 1, 1
	BRA         L_main29
	NOP
;MyProject.c,119 :: 		compte++;
	INFSNZ      _compte+0, 1 
	INCF        _compte+1, 1 
;MyProject.c,120 :: 		}
	GOTO        L_main27
L_main28:
;MyProject.c,121 :: 		etape++;
	INFSNZ      _etape+0, 1 
	INCF        _etape+1, 1 
;MyProject.c,122 :: 		}
L_main26:
;MyProject.c,123 :: 		break;
	GOTO        L_main21
;MyProject.c,124 :: 		default : // calcul de la distance via le mod�le constructeur
L_main30:
;MyProject.c,125 :: 		nombreaffiche = (int)compte*10/58.0;
	MOVF        _compte+0, 0 
	MOVWF       R0 
	MOVF        _compte+1, 0 
	MOVWF       R1 
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	CALL        _int2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       104
	MOVWF       R6 
	MOVLW       132
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _nombreaffiche+0 
	MOVF        R1, 0 
	MOVWF       _nombreaffiche+1 
;MyProject.c,126 :: 		afficheNombre(nombreaffiche);
	MOVF        R0, 0 
	MOVWF       FARG_afficheNombre_var+0 
	MOVF        R1, 0 
	MOVWF       FARG_afficheNombre_var+1 
	CALL        _afficheNombre+0, 0
;MyProject.c,151 :: 		UART1_Write(nombreaffiche);
	MOVF        _nombreaffiche+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,152 :: 		etape=0;
	CLRF        _etape+0 
	CLRF        _etape+1 
;MyProject.c,153 :: 		break;
	GOTO        L_main21
;MyProject.c,154 :: 		}
L_main20:
	MOVLW       0
	XORWF       _etape+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main36
	MOVLW       0
	XORWF       _etape+0, 0 
L__main36:
	BTFSC       STATUS+0, 2 
	GOTO        L_main22
	MOVLW       0
	XORWF       _etape+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main37
	MOVLW       1
	XORWF       _etape+0, 0 
L__main37:
	BTFSC       STATUS+0, 2 
	GOTO        L_main23
	MOVLW       0
	XORWF       _etape+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main38
	MOVLW       2
	XORWF       _etape+0, 0 
L__main38:
	BTFSC       STATUS+0, 2 
	GOTO        L_main25
	GOTO        L_main30
L_main21:
;MyProject.c,155 :: 		}
	GOTO        L_main18
;MyProject.c,156 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
