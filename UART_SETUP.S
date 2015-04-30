#include <p32xxxx.h>
.global UART_Setup
.data
.text
.set noreorder
.ent UART_Setup

UART_Setup:
    li s0, 0
    or s0, s0, ra

    nop
    sw zero, U1STA       # clear U2STA
    li t1, 0x0A          # t1 is temp storage
    sw t1, U1BRG         # 0x0A (baud=57600) -> U1BRG
    li t1, 0x8B00        # set bits 15(ON) 11(RTSMD) 9:8 (UEN)
    sw t1, U1MODE        # 0x8B00 -> MODE
    li t1, 0x1400        # set bits 10,12 (UTXEN, URXEN) on
    sw t1, U1STA         # enable U1STA

    jr s0
    nop

.end UART_Setup