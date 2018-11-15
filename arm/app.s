
;/* Write a dispatcher code for context saving and restoring (AVR, ARM) */

;ARM CODE 
.code 32		;word align
.text	
.global main_asm

;/* Application code for assembly starts here */

main_asm:
		str r15, [sp]
		stmfd sp!, {r0-r12}
		ldmfd sp!, {r0-r12}
		ldr r15, [pc]
	
	
	
loop:   b loop
.end 
