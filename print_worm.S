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
# Print the worm by reading from the worm's memory location.
# #***************************************************************
#include <p32xxxx.h>
.global print_worm
.data
.text
.set noreorder
.set TO_PRINT, 0xA0000220
.set WORM, 0xA0000300
.set WORM_LENGTH, 0xA00002FC

.ent print_worm

# j = 6A Down
# k = 6B Up
# l = 6C right
# h = 68 left
# # = 23
# ^ = 5E

print_worm:
li s0, 0
or s0, s0, ra

la s6, WORM
la s5, WORM_LENGTH
lh s4, 0x0(s5)

##PRINT HEAD##
lh s2, 0(s6)
li t1, 0x230000
or s2, s2, t1
sw s2, TO_PRINT
bal print_Y_X_Char
nop

print_body:
addi s6, 2
lh s2, 0(s6)
li t1, 0x5E0000
or s2, s2, t1
sw zero, TO_PRINT
sw s2, TO_PRINT
bal print_Y_X_Char
nop
addi s4, -1
bgez s4, print_body
nop

lb t2, 3(s5)
bgtz t2, finish_print_worm
nop
lh s2, 0(s6)
li t1, 0x200000
or s2, s2, t1
sw zero, TO_PRINT
sw s2, TO_PRINT
bal print_Y_X_Char
nop
jr s0
nop

finish_print_worm:
lb t1, 0(s5)
addi t1, 1
sb t1, 0(s5)
addi t2, -1
sb t2, 3(s5)
jr s0
nop

.end print_worm
