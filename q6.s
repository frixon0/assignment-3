.global _start
_start:
    ldr r0, =ch
    ldrb r1, [r0]
    mov r2, #0 

    cmp r1, #'A'
    blt end
    cmp r1, #'Z'
    ble upper
    cmp r1, #'a'
    blt end
    cmp r1, #'z'
    bgt end

lower:
    cmp r1, #'a'
    beq vowel
    cmp r1, #'e'
    beq vowel
    cmp r1, #'i'
    beq vowel
    cmp r1, #'o'
    beq vowel
    cmp r1, #'u'
    beq vowel
    b end

upper:
    cmp r1, #'A'
    beq vowel
    cmp r1, #'E'
    beq vowel
    cmp r1, #'I'
    beq vowel
    cmp r1, #'O'
    beq vowel
    cmp r1, #'U'
    beq vowel
    b end

vowel:
    mov r2, #1

end:
    b end

.data
