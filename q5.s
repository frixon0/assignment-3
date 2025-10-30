.global _start
_start:
    ldr r0, =ch
    ldrb r1, [r0]
    cmp r1, #'a'
    blt done
    cmp r1, #'z'
    bgt done
    sub r1, r1, #32
    strb r1, [r0]

done:
    b done

.data
ch: .byte 'm'
