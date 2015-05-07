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
# This is used to create food. Using both timers to obtain 'random'
# values, we then mod it with whatever we need to create the char
# value (2-9), the x (4-20), and y (4-78)
# #***************************************************************
#include <p32xxxx.h>
.global create_food
.data
.text
.set noreorder
.set Food_Location, 0xA00002F8
.set TO_PRINT, 0xA0000220

.ent create_food

create_food:
    li s0, 0
    or s0, s0, ra

    #char (2-9)
    lw t0, TMR2
    li t1, 8
    div t0, t1
    mfhi t1
    addi t1, 0x30

    #x (4-20)
    #ones place
    lw t0, TMR1
    li t2, 7
    div t0, t2
    mfhi t2
    #tens place
    lw t0, TMR2
    li t3, 2
    div t0, t3
    mfhi t3
    sll t3, 4
    or t2, t2, t3

    #y (4-78)
    #ones place
    lw t0, TMR2
    li t3, 7
    div t0, t3
    mfhi t3
    #tens place
    lw t0, TMR2
    li t4, 6
    div t0, t4
    mfhi t4
    sll t4, 4
    or t3, t3, t4

    #shift values to stay on gameboard
    addi t3, 4
    addi t2, 4
    addi t1, 2

    #store values into food box and print
    la t0, Food_Location
    sb t3, 0(t0)  #y
    sb t2, 1(t0)  #x
    sb t1, 2(t0)  #char
    lw t1, 0(t0)
    sw t1, TO_PRINT
    bal print_Y_X_Char
    nop

    jr s0
    nop

.end create_food