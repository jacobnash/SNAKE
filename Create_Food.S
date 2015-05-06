#include <p32xxxx.h>
.global Create_Food
.text
.set noreorder
.ent Create_Food
.set Food_Location, 0xA00004F8
.set TO_PRINT, 0xA0000400

Create_Food:
    li s1, 0
    or s1, s1, ra

    lw t0, TMR1
    li t1, 8
    div t0, t1
    mfhi t1
    addi t1, 0x30
    lw t0, TMR1
    li t2, 18
    div t0, t2
    mfhi t2
    lw t0, TMR1
    li t3, 74
    div t0, t3
    mfhi t3
    la t0, Food_Location
    addi t3, 5
    addi t2, 5
    addi t1, 2
    sw zero, Food_Location

    #TEMP, only to test erase this
    #li t3, 0x35
    #li t2, 0x12
    #li t1, 0x35

    sb t3, 0(t0)  #y
    sb t2, 1(t0)  #x
    sb t1, 2(t0)  #char
    lw t1, 0(t0)
    sw t1, TO_PRINT
    bal Print_Char_X_Y
    nop
    nop
    jr s1
    nop

.end Create_Food