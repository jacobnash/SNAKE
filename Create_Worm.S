# ************************************************************* #
# ECE 344L - Microprocessors - Spring 2015
#
# Name: Matthew Greci and Mitchell Jackson
#
#     Laboratory Number: 6             Due Date: 7 May 2015
#
#
# Lab Group: Matthew Greci and Mitchell Jackson
#
#
# #*************************************************************** #
# This is used to initially create the worm. The head, and 6 body
# values are loaded into the worm's place in memory.
# #***************************************************************
#include <p32xxxx.h>
.global create_worm
.data
.text
.set noreorder
.set TO_PRINT,    0xA0000220
.set WORM_BOX,     0xA0000230
.set WORM_LENGTH, 0xA00002FC
.set WORM,        0xA0000300

.ent create_worm

create_worm:
	li s0, 0
	or s0, s0, ra

    #create the initial head and body values
    #store into memory for print_worm
    la t0, WORM
    li t1, 0x1240
    sh t1, 0x0(t0)

    li t1, 0x1241
    sh t1, 0x2(t0)

    li t1, 0x1242
    sh t1, 0x4(t0)

    li t1, 0x1243
    sh t1, 0x6(t0)

    li t1, 0x1244
    sh t1, 0x8(t0)

    li t1, 0x1245
    sh t1, 0xA(t0)

    li t1, 0x1246
    sh t1, 0xC(t0)

    #initial length is 6
    li t0, 6
    sw t0, WORM_LENGTH

    #initial direction is left
    li t0, 0x68
    sw t0, WORM_BOX

    jr s0
    nop

.end create_worm
