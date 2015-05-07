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
# This is used to increment the clock time.
# #***************************************************************
#include <p32xxxx.h>
.global incr_clk
.data
.text
.set noreorder
.set CLKTIME, 0xA0000208

.ent incr_clk

incr_clk:
li s0, 0
or s0, s0, ra

lw t0, CLKTIME
addi t0, t0, 1
sw t0, CLKTIME

jr s0
nop

.end incr_clk
