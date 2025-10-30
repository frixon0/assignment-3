.global _start
_start:
	ldr r0, =list
	mov r1, #5
	
loop:
	ldr r2, [r0]
	add r2, r2, #1
	str r2, [r0]
	add r0, r0, #4
	subs r1, r1, #1
	bne loop
	
.data
list:
	.word 1,2,3,4,5
