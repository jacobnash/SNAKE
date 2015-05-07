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
# Interrupt service routine for Timer 1 (move worm, update score).
# #***************************************************************
#include <p32xxxx.h>				
.global ISR_timer1
.data
.text
.set noreorder
.ent ISR_timer1

ISR_timer1:
    #clear interrupt flag
    sw zero, IFS0

    #move worm
    bal move_worm
    nop

    #print worm
    bal print_worm
    nop

    #update score
    bal update_score
    nop

    #return to main
	eret
	nop

.end ISR_timer1
