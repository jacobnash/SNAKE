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
# Setup timers
# #***************************************************************
#include <p32xxxx.h>
.global setup_timer
.text
.set noreorder
.ent setup_timer

setup_timer:
    li s0, 0
    or s0, s0, ra

    #Initialize Timer1
    sw zero, T1CON          #Disable/Stop Timer1
	sw zero, TMR1			#Clear Timer1
	li t1, 0xA000
	sw t1, PR1				#Store Period
	li t1, 0x8070
	sw t1, T1CON			#Enable Timer1

    #Initialize Timer2
    sw zero, T2CON          #Disable/Stop Timer2
	sw zero, TMR2			#Clear Timer1
	li t1, 0xA000
	sw t1, PR2				#Store Period
	li t1, 0x8070
	sw t1, T2CON			#Enable Timer2

    jr s0
    nop

.end setup_timer