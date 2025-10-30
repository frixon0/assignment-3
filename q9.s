.global _start
_start:
    ldr r0, =arr
    mov r1, #5
    ldr r2, [r0]

loop:
    add r0, r0, #4
    subs r1, r1, #1
    beq done
    ldr r3, [r0]
    cmp r3, r2
    ble loop
    mov r2, r3
    b loop

done:
    b done

.data
arr: .word 10, 45, 23, 67, 12
