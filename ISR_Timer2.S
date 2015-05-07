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
# Interrupt service routine for Timer 2 (control clocks).
# #***************************************************************
#include <p32xxxx.h>				
.global ISR_timer2
.data
.text
.set noreorder
.set PAUSED_BOX, 0xA0000240
.ent ISR_timer2

ISR_timer2:
    #clear interrupt flag
    sw zero, IFS0

    #increment clock
    bal incr_clk
    nop

    # check PAUSED_BOX != 0, do not increment elapsed
    lw t0, PAUSED_BOX
    bne t0, zero, PAUSED_BOX
    nop
    # otherwise increment elapsed
    bal incr_elapsed
    nop

PAUSED_BOX:
    # update and print normally afterwords
    bal update_time
    nop
    bal print_time
    nop

    #return to main
	eret
	nop

.end ISR_timer2
