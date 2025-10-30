.global _start
_start:
    ldr r0, =src
    ldr r1, =dest
    mov r2, #5

loop:
    ldr r3, [r0], #4
    str r3, [r1], #4
    subs r2, r2, #1
    bne loop

done:
    b done

.data
src:  .word 10, 20, 30, 40, 50
dest: .space 20
