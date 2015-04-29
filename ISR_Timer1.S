#include <p32xxxx.h>				
.global ISR_Timer1
.text
.set noreorder
.set MAILBOX, 0xA0000440
.ent ISR_Timer1

ISR_Timer1:
    sw zero, IFS0       #clear flag
    bal Increment_Times
    nop
    bal Print_Time
    nop
    bal Update_Time
    nop
    bal Move_Snake
    nop
    bal Print_Snake
    nop
	eret                #return to main
	nop
.end ISR_Timer1
