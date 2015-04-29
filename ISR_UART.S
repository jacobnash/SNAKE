#include <p32xxxx.h>				
.global ISR_UART
.text
.set noreorder
.set MAILBOX, 0xA0000440
.ent ISR_UART

ISR_UART:
	sw zero, IFS0		#clear flag
	lw t1, U1RXREG		#retrieve char from RX register
	sw t1, MAILBOX  	#store char in mailbox
	eret                #return to main
	nop	
.end ISR_UART
