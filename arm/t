ARM GAS  app.s 			page 1


   1              	
   2              	;/* PROGRAM TO ------------------ */
   3              	
   4              	;ARM CODE 
   5              	.code 32		;word align
   6              	.text	
   7              	.global main_asm
   8              	
   9              	;/* Application code for assembly starts here */
  10              	
  11              	main_asm:
  12 0000 00F08DE5 			str r15, [sp]
  13 0004 FF1F2DE9 			stmfd sp!, {r0-r12}
  14 0008 FF1FBDE8 			ldmfd sp!, {r0-r12}
  15 000c 00F09FE5 			ldr r15, [pc]
  16              		
  17              		
  18              		
  19 0010 020000EA 	loop:   b loop
  20              	.end 
ARM GAS  app.s 			page 2


DEFINED SYMBOLS
               app.s:11     .text:00000000 main_asm
               app.s:19     .text:00000010 loop

NO UNDEFINED SYMBOLS
