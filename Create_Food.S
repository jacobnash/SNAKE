#include <p32xxxx.h>
.global Create_Food
.text
.set noreorder
.ent Create_Food
.set Food_Location, 0xA00004F8
.set TO_PRINT, 0xA0000400

Create_Food:
    li s0, 0
    or s0, s0, ra

    lw t0, TMR1
    li t1, 7
    div t0, t1
    mfhi t1
    addi t1, 0x30
    lw t0, TMR1
    li t2, 19
    div t0, t2
    mflo t2
    lw t0, TMR1
    li t3, 75
    div t0, t3
    mflo t3
    la t0, Food_Location
    addi t1, 3
    addi t2, 3
    addi t3, 2
    sw zero, Food_Location
    sb t3, 0x0(t0)
    sb t2, 0x1(t0)
    sb t1, 0x2(t0)
    lw t1, 0x0(t0)
    sw t1, TO_PRINT

    bal Print_Char_X_Y

    jr s0

    nop

.end Create_Food