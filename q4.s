.global _start
_start:
	ldr r0, =num
	ldr r1, [r0]
	mov r2, #0

loop:
	cmp r1, #0
	beq done
	and r3, r1, #1
	add r2, r2, r3
	lsrs r1, r1, #1
	b loop

done:
	b done
	
.data
num = 0xF0F0A011
