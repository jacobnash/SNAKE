#include <p32xxxx.h>				
.global ISR_UART
.text
.set noreorder
.set MAILBOX, 0xA0000440
.set SPEED, 0xA00004DE
.ent ISR_UART
#0x63 - 'c' start/stop
#0x68 - 'h' left
#0x6A - 'j' down
#0x6B - 'k' up
#0x6C - 'l' right
ISR_UART:
	sw zero, IFS0		#clear flag
	lw t1, U1RXREG		#retrieve char from RX register

    li t2, 0x30
    beq t1,t2, UART_SPEED
    nop
    li t2, 0x31
    beq t1,t2, UART_SPEED
    nop
    li t2, 0x32
    beq t1,t2, UART_SPEED
    nop
    li t2, 0x33
    beq t1,t2, UART_SPEED
    nop
    li t2, 0x34
    beq t1,t2, UART_SPEED
    nop
    li t2, 0x35
    beq t1,t2, UART_SPEED
    nop
    li t2, 0x36
    beq t1,t2, UART_SPEED
    nop
    li t2, 0x37
    beq t1,t2, UART_SPEED
    nop
    li t2, 0x38
    beq t1,t2, UART_SPEED
    nop
    li t2, 0x39
    beq t1,t2, UART_SPEED
    nop
    li t2, 0x63
    beq t1,t2, UART_MAILBOX
    nop
    li t2, 0x68
    beq t1,t2, UART_MAILBOX
    nop
    li t2, 0x6A
    beq t1,t2, UART_MAILBOX
    nop
    li t2, 0x6B
    beq t1,t2, UART_MAILBOX
    nop
    li t2, 0x6C
    beq t1,t2, UART_MAILBOX
    nop
    b UART_RETURN
    nop
UART_SPEED:
    sw t1, SPEED
    b UART_RETURN
    nop

UART_MAILBOX:
	sw t1, MAILBOX  	#store char in mailbox
    b UART_RETURN
    nop

UART_RETURN:
    eret                #return to main
	nop	
.end ISR_UART
