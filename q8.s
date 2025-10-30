.global _start
_start:
    ldr r0, =str
    mov r1, r0


find_end:
    ldrb r2, [r1], #1
    cmp r2, #0
    bne find_end
    sub r1, r1, #2

reverse:
    cmp r0, r1
    bhs done
    ldrb r2, [r0]
    ldrb r3, [r1]
    strb r3, [r0]
    strb r2, [r1]
    add r0, r0, #1
    sub r1, r1, #1
    b reverse

done:
    b done

.data
str: .asciz "hello"
