#include <p32xxxx.h>				
.global ISR_Timer2
.text
.set noreorder
.set PAUSED, 0xA00004D0
.ent ISR_Timer2

ISR_Timer2:
    sw zero, IFS0       #clear flag

    bal Increment_Clock_Time
    nop
    bal Update_Score
    nop

    lw t0, PAUSED
    # check PAUSED != 0, do not increment elapsed
    bne t0, zero, Skip
    nop
    # otherwise increment elapsed
    bal Increment_Elapsed_Time
    nop

Skip:
    # update and print normally afterwords
    bal Update_Time
    nop
    bal Print_Time
    nop
	eret                #return to main
	nop

.end ISR_Timer2
