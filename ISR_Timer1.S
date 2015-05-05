#include <p32xxxx.h>				
.global ISR_Timer1
.text
.set noreorder
.ent ISR_Timer1

ISR_Timer1:
    sw zero, IFS0       #clear flag
    bal Move_Snake
    nop
    bal Print_Snake
    nop
	eret                #return to main
	nop
.end ISR_Timer1
