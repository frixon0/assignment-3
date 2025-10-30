.global _start
_start:
    ldr r0, =str
    mov r1, #0


loop:
    ldrb r2, [r0], #1
    cmp r2, #0
    beq done
    add r1, r1, #1
    b loop

done:
    b done

.data
str: .asciz "hello"
