; ******************************************************

;Write a dispatcher code for context saving and restoring (AVR, ARM)or AVR

; ******************************************************


.include "C:\VMLAB\include\m8def.inc"


reset:
   rjmp start

   reti      ; Addr $01
   reti      ; Addr $02
   reti      ; Addr $03
   reti      ; Addr $04
   reti      ; Addr $05
   reti      ; Addr $06        Use 'rjmp myVector'
   reti      ; Addr $07        to define a interrupt vector
   reti      ; Addr $08
   reti      ; Addr $09
   reti      ; Addr $0A
   reti      ; Addr $0B        This is just an example
   reti      ; Addr $0C        Not all MCUs have the same
   reti      ; Addr $0D        number of interrupt vectors
   reti      ; Addr $0E
   reti      ; Addr $0F
   reti      ; Addr $10

; Program starts here after Reset

start:

		LDI R16,HIGH(RAMEND)
      OUT SPH,R16
      LDI R17,LOW(RAMEND)
      OUT SPL,R17
      LDI R16,0XFF
      OUT DDRB,R16
      RJMP LED

LED:
		
      OUT PORTB,R16

		LDI R17,0XFF

AGAIN:
		CALL DELAY
      IN R16,PORTB
      EOR R16,R17
      OUT PORTB,R16
      RJMP AGAIN

DELAY:
		LDI R21,20
      LDI R22,50
      LOOP:
      CALL TRANS
      DEC R21
      BRNE LOOP

TRANS:
      PUSH R21
      PUSH R22
      PUSH R16
      PUSH R17

		IN XH,SPH
      IN XL,SPL

      LDI R23,0X06
      LDI R24,0X03
      LDI R22,0X01

		PUSH R23
      PUSH R24
      PUSH R22

		IN YH,SPH
      IN YL,SPL

      OUT SPH,XH
      OUT SPL,XL

      POP R17
      POP R16
      POP R22
      POP R21
      RET

forever:
      nop
      nop       ; Infinite loop.
      nop       ; Define your main system
      nop       ; behaviour here
      rjmp forever


