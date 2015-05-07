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
# Moves worm. All error checking and obstruction checking is here.
# #***************************************************************
#include <p32xxxx.h>			
.global move_worm
.data
.text
.set noreorder
.set TO_PRINT,    0xA0000220
.SET WORM_BOX,     0xA0000230
.set PAUSED_BOX,      0xA0000240
.set WORM_LENGTH, 0xA00002FC
.set WORM,        0xA0000300
.set Food_Location, 0xA00002F8

.ent move_worm

#0x63 - 'c' start/stop
#0x68 - 'h' left
#0x6A - 'j' down
#0x6B - 'k' up
#0x6C - 'l' right

move_worm:
li s0, 0
or s0, s0, ra

    la t0, WORM
    lh t1, WORM_LENGTH  #load worm length value
    #save current head location
    lh t9, 0(t0)  #old location
    lh t8, 0(t0)  #new location
    #generate new location
    b next_location
    nop
return_move_worm:
    #t8 has new location
    lw t1, WORM_LENGTH  #load worm length value
    #addi t1, 1          #
continue_move_worm:
    lh t9, 0(t0)  #t9 = current value
    sh t8, 0(t0)  #replace current body with new value
    lh t8, 2(t0)  #save next body value
    sh t9, 2(t0)  #replace next body with current body value
    addi t0, 4    #incr worm pointer
    addi t1, -1   #decr loop counter
    bgtz t1, continue_move_worm  #continue looping worm
    nop

done_move_worm:
    #t8 has new location
    lh t1, Food_Location
    bne t1, t8, No_Food_move_worm
    nop
    la t1, Food_Location
    lb t2, 2(t1)        #char of food
    sw zero, Food_Location
    addi t2, -0x30      #now (2-9)
    lw t3, WORM_LENGTH  #load worm length
    add t2, t2, t3      #add food to length
    sw t2, WORM_LENGTH  #store it back
    bal update_score
    nop
    bal create_food     #make another food
    nop
No_Food_move_worm:
    jr s0         #otherwise done
    nop

next_location:
    lw t2, WORM_BOX     #value of WORM_BOX
    beq t2, 0x68, move_left
    nop
    beq t2, 0x6A, move_down
    nop
    beq t2, 0x6B, move_up
    nop
    beq t2, 0x6C, move_right
    nop
    b done_move_worm
    nop
    
move_left:
    # y (column) decr
    addi t8, -1
    b check_error
    nop

move_right:
    # y (column) incr
    addi t8, 1
    b check_error
    nop

move_down:
    # x (row) incr
    addi t8, 0x0100
    b check_error
    nop

move_up:
    # y (column) decr
    addi t8, -0x0100
    b check_error
    nop

check_error:
    la t2, 0xA00004E0
    la t3, 0xA00004E2
    sw t8, 0(t2)      #copy t8 to t2 (address)
Loop_move_worm:
    beq t3, t2, check_border_move_worm
    nop
    lb t4, 0(t2)
    andi t4, t4, 0xF
    beq t4, 0xF, is_F
    nop
    beq t4, 0xA, is_A
    nop
    addi t2, 1
    b Loop_move_worm
    nop

is_F:
    lb t4, 0(t2)
    addi t4, t4, -6
    sb t4, 0(t2)
    addi t2, 1
    b Loop_move_worm
    nop

is_A:
    lb t4, 0(t2)
    addi t4, t4, 6
    sb t4, 0(t2)
    addi t2, 1
    b Loop_move_worm
    nop

check_border_move_worm:
    la t2, 0xA00004E0     # point t2 to new head location
    lw t8, 0(t2)          # copy corrected value from *t2 to t8
    #col<=3
    andi t4, t8, 0x00FF
    addi t4, t4, -0x0003
    bltz t4, stop_game
    nop
    #col>=79
    andi t4, t8, 0x00FF
    addi t4, t4, -0x0078
    bgtz t4, stop_game
    nop
    #row<=3
    andi t4, t8, 0xFF00
    addi t4, t4, -0x0300
    bltz t4, stop_game
    nop
    #row>=23
    andi t4, t8, 0xFF00
    addi t4, t4, -0x2200
    bgtz t4, stop_game
    nop

check_body:
    # t8 is HEAD new position
    # t1 is WORM_LENGTH
    la t2, WORM
    addi t2, t2, 2
check_body_loop:
    lh t4, 0(t2)
    beq t8, t4, stop_game
    nop
    addi t2, t2, 2
    addi t1, t1, -1
    bne t1, zero, check_body_loop
    nop
    b return_move_worm
    nop

stop_game:
    #prints 'P' at center (12,40)
    li t0, 1
    sw t0, PAUSED_BOX
    li t2, 0x501240
    sw t2, TO_PRINT
    bal print_Y_X_Char
    nop
    b return_move_worm
    nop

.end move_worm
