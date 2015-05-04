#include <p32xxxx.h>				
.global ISR_UART
.text
.set noreorder
.set MAILBOX, 0xA0000440
.set RESTART, 0xA00004DD
.set PAUSED,  0xA00004DE
.set SPEED,   0xA00004DF
.ent ISR_UART

ISR_UART:
	sw zero, IFS0		 #clear flag
	lw t1, U1RXREG		 #retrieve char from RX register

    addi t2, t1, -0x68
    bgez t2, Char_Direction  #direction char, store for worm
    nop

    li t2, 0x63
    beq t1, t2, Char_C   #flag PAUSED, char is 'c'
    nop

    addi t2, t1, -0x30
    bgez t2, Char_Number #store to SPEED, char is number
    nop

    Char_Direction:
	sb t1, MAILBOX  	 #store for worm
    eret                 #return to main
    nop

    Char_C:
    lb t1, PAUSED
    bgtz t1, Restart_Game
    nop

    li t1, 1
    sb t1, PAUSED        #flag PAUSED
    eret                 #return to main
    nop

    Restart_Game:
    li t1, 1
    sb t1, RESTART
    eret
    nop

    Char_Number:
    sb t1, SPEED         #store to SPEED
	eret                 #return to main
	nop

.end ISR_UART
