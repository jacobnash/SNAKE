#include <p32xxxx.h>
.global Create_Worm
.data
.text
.set noreorder
.ent Create_Worm
.set WORM, 0xA0000500
.set WORM_LENGTH, 0xA00004FC
.set PRINTER, 0xA0000400

#DATA STUCT FORMAT
#XXYYPTRN
Create_Worm:
    la a1, PRINTER
	li s0, 0
	or s0, s0, ra
    la a2, WORM
    li t0, 0x231240
    sh t0, 0x0(a2)
    sw t0, 0x0(a1)
    bal Print_Char_X_Y
    nop
    li t0, 0x5E1241
    sh t0, 0x2(a2)
    sw t0, 0x0(a1)
    bal Print_Char_X_Y
    nop
    li t0, 0x5E1242
    sh t0, 0x4(a2)
    sw t0, 0x0(a1)
    bal Print_Char_X_Y
    nop
    li t0, 0x5E1243
    sh t0, 0x6(a2)
    sw t0, 0x0(a1)
    bal Print_Char_X_Y
    nop
    li t0, 0x5E1244
    sh t0, 0x8(a2)
    sw t0, 0x0(a1)
    bal Print_Char_X_Y
    nop
    li t0, 0x5E1245
    sh t0, 0xA(a2)
    sw t0, 0x0(a1)
    bal Print_Char_X_Y
    nop
    li t0, 0x5E1246
    sh t0, 0xC(a2)
    sw t0, 0x0(a1)
    bal Print_Char_X_Y
    nop
    li t0, 0x0
    sh t0, 0xE(a2)
    
    li t0, 6
    sw t0, 0xA00004FC #WORM_LENGTH
jr s0
nop
.end Create_Worm
