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
# Interrupt service routine for UART (place into correct WORM_BOX).
# #***************************************************************
#include <p32xxxx.h>				
.global ISR_UART
.data
.text
.set noreorder
.set WORM_BOX, 0xA0000230
.set PAUSED_BOX,  0xA0000240
.set RESTART_BOX, 0xA0000250
.set SPEED_BOX,   0xA0000260

.ent ISR_UART

#0x63 - 'c' start/stop
#0x68 - 'h' left
#0x6A - 'j' down
#0x6B - 'k' up
#0x6C - 'l' right

ISR_UART:
    #clear interrupt flag
    sw zero, IFS0

    #load value from RX reg
    lw t0, U1RXREG

    li t2, 0x30
    beq t0,t2, UART_SPEED_BOX
    nop
    li t2, 0x31
    beq t0,t2, UART_SPEED_BOX
    nop
    li t2, 0x32
    beq t0,t2, UART_SPEED_BOX
    nop
    li t2, 0x33
    beq t0,t2, UART_SPEED_BOX
    nop
    li t2, 0x34
    beq t0,t2, UART_SPEED_BOX
    nop
    li t2, 0x35
    beq t0,t2, UART_SPEED_BOX
    nop
    li t2, 0x36
    beq t0,t2, UART_SPEED_BOX
    nop
    li t2, 0x37
    beq t0,t2, UART_SPEED_BOX
    nop
    li t2, 0x38
    beq t0,t2, UART_SPEED_BOX
    nop
    li t2, 0x39
    beq t0,t2, UART_SPEED_BOX
    nop
    li t2, 0x63
    beq t0,t2, Char_C
    nop
    li t2, 0x68
    beq t0,t2, UART_WORM_BOX
    nop
    li t2, 0x6A
    beq t0,t2, UART_WORM_BOX
    nop
    li t2, 0x6B
    beq t0,t2, UART_WORM_BOX
    nop
    li t2, 0x6C
    beq t0,t2, UART_WORM_BOX
    nop
    b UART_RETURN
    nop

UART_SPEED_BOX:
    sb t0, SPEED_BOX
    b UART_RETURN
    nop

Char_C:
    lb t0, PAUSED_BOX
    bgtz t0, RESTART_BOX_flag
    nop
    li t0, 1
    sb t0, PAUSED_BOX        #flag PAUSED_BOX
    b UART_RETURN
    nop

RESTART_BOX_flag:
    li t0, 1
    sb t0, RESTART_BOX
    b UART_RETURN
    nop

UART_WORM_BOX:
	sb t0, WORM_BOX  	#store char in WORM_BOX
    b UART_RETURN
    nop

UART_RETURN:
    eret                #return to main
	nop	

.end ISR_UART
