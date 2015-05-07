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
# Setup UART 1
# #***************************************************************
#include <p32xxxx.h>
.global setup_UART
.data
.text
.set noreorder
.ent setup_UART

setup_UART:
    li s0, 0
    or s0, s0, ra

    sw zero, U1STA       # disable UART 1
    li t1, 0x20
    sw t1, U1BRG         # 0xA (baud=115200) -> U1BRG
    li t1, 0x8B00        # set bits 15(ON) 11(RTSMD) 9:8 (UEN)
    sw t1, U1MODE        # 0x8B00 -> MODE
    li t1, 0x1400        # set bits 10,12 (UTXEN, URXEN) on
    sw t1, U1STA         # enable U1STA

    jr s0
    nop

.end setup_UART