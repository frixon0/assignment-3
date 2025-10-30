.global _start
_start:
	ldr r0, =list
	mov r1, #4

push_loop:
	ldr r2, [r0], #4
	push {r2}
	subs r1, r1, #1
	bne push_loop
	
	ldr r0, =list
	mov r1, #4

pop_loop:
	pop {r3}
	str r3, [r0], #4
	subs r1, r1, #1
	bne pop_loop

.data
list:
	.word 1,3,4,5
