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
# Update and print the score on the bottom line
# #***************************************************************
#include <p32xxxx.h>
.global update_score
.data
.text
.set noreorder
.set TO_PRINT, 0xA0000220
.set WORM_LENGTH, 0xA00002FC

.ent update_score

update_score:
    li s1, 0
    or s1, s1, ra

    lw t0, WORM_LENGTH
    addi t0, t0, -6    #length starts at 6, score starts at 0
    
    #display in LEDs
    sw t0, PORTE

    #print on UART
    addi t1, t0, -10
    bgez t1, double_digits
    nop
    #single digit score
    addi t0, t0, 0x30
    sll t0, t0, 16
    ori t0, t0, 0x2441
    sw t0, TO_PRINT
    bal print_Y_X_Char
    nop
    b done_update_score
    nop

double_digits:
    li t1, 10

    #print tens place
    div t0, t1
    mflo t2
    addi t2, t2, 0x30
    sll t2, t2, 16
    ori t2, t2, 0x2440
    sw t0, TO_PRINT
    bal print_Y_X_Char
    nop

    #print ones place
    div t0, t1
    mfhi t2
    addi t2, t2, 0x30
    sll t2, t2, 16
    ori t2, t2, 0x2440
    sw t0, TO_PRINT
    bal print_Y_X_Char
    nop

done_update_score:
    jr s1
    nop

.end update_score
