#include <p32xxxx.h>
.global Create_Worm
.data
.text
.set noreorder
.set TO_PRINT,    0xA0000400
.set MAILBOX,     0xA0000440
.set WORM_LENGTH, 0xA00004FC
.set WORM,        0xA0000500

.ent Create_Worm

Create_Worm:
	li s0, 0
	or s0, s0, ra

    la t0, WORM
    li t1, 0x231240
    sh t1, 0x0(t0)
    sw t1, TO_PRINT
    bal Print_Char_X_Y
    nop
    li t1, 0x5E1241
    sh t1, 0x2(t0)
    sw t1, TO_PRINT
    bal Print_Char_X_Y
    nop
    li t1, 0x5E1242
    sh t1, 0x4(t0)
    sw t1, TO_PRINT
    bal Print_Char_X_Y
    nop
    li t1, 0x5E1243
    sh t1, 0x6(t0)
    sw t1, TO_PRINT
    bal Print_Char_X_Y
    nop
    li t1, 0x5E1244
    sh t1, 0x8(t0)
    sw t1, TO_PRINT
    bal Print_Char_X_Y
    nop
    li t1, 0x5E1245
    sh t1, 0xA(t0)
    sw t1, TO_PRINT
    bal Print_Char_X_Y
    nop
    li t1, 0x5E1246
    sh t1, 0xC(t0)
    sw t1, TO_PRINT
    bal Print_Char_X_Y
    nop

    #set initial length to 6
    li t1, 6
    sw t1, WORM_LENGTH

    #set initial direction to left
    li t1, 0x68
    sw t1, MAILBOX

    jr s0
    nop
.end Create_Worm
