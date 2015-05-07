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
# This is used to increment the elapsed time.
# #***************************************************************
#include <p32xxxx.h>
.global incr_elapsed
.text
.set noreorder
.set ELAP_TIME, 0xA0000218

.ent incr_elapsed

incr_elapsed:
li s0, 0
or s0, s0, ra

lw t0, ELAP_TIME
addi t0, t0, 1
sw t0, ELAP_TIME

jr s0
nop

.end incr_elapsed