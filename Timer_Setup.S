#include <p32xxxx.h>
.global Timer_Setup
.text
.set noreorder
.ent Timer_Setup

Timer_Setup:
    li s0, 0
    or s0, s0, ra

    #Initialize Timer1
    sw zero, T1CON          #Disable/Stop Timer1
	sw zero, TMR1			#Clear Timer1
	li t1, 0x9000
	sw t1, PR1				#Store Period
	li t1, 0x8070
	sw t1, T1CON			#Enable Timer1

    #Initialize Timer2
    sw zero, T2CON          #Disable/Stop Timer2
	sw zero, TMR2			#Clear Timer1
	li t1, 0x9000
	sw t1, PR2				#Store Period
	li t1, 0x8070
	sw t1, T2CON			#Enable Timer2

    jr s0
    nop

.end Timer_Setup