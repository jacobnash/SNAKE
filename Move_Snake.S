#include <p32xxxx.h>
						
.global Move_Snake
.text
.set noreorder
.set TO_PRINT,    0xA0000400
.SET MAILBOX,     0xA0000440
.set PAUSED,      0xA00004D0
.set WORM_LENGTH, 0xA00004FC
.set WORM,        0xA0000500
.set Food_Location, 0xA00004F8

.ent Move_Snake

#0x63 - 'c' start/stop
#0x68 - 'h' left
#0x6A - 'j' down
#0x6B - 'k' up
#0x6C - 'l' right

## probably should be done here.
#check if head meets food,
#updates Score
#then Creates new food that isnt in-line with head... I dont think it
#is a problem if it is under the snake aslongas we print food before snake
# and make that a part of this 

Move_Snake:
li s0, 0
or s0, s0, ra

    la t0, WORM
    lh t1, WORM_LENGTH  #load worm length value
    #save current head location
    lh t9, 0(t0)  #old location
    lh t8, 0(t0)  #new location
    #generate new location
    b New_Location_Move_Snake
    nop
Return_Move_Snake:
    #t8 has new location
    lw t1, WORM_LENGTH  #load worm length value
    #addi t1, 1          #
Cont_Move_Snake:
    lh t9, 0(t0)  #t9 = current value
    sh t8, 0(t0)  #replace current body with new value
    lh t8, 2(t0)  #save next body value
    sh t9, 2(t0)  #replace next body with current body value
    addi t0, 4    #incr worm pointer
    addi t1, -1   #decr loop counter
    bgtz t1, Cont_Move_Snake  #continue looping worm
    nop
Done_Move_Snake:

    #t8 has new location
    lh t1, Food_Location
    bne t1, t8, No_Food_Move_Snake
    nop
    la t1, Food_Location
    lb t2, 2(t1)        #char of food
    sw zero, Food_Location
    addi t2, -0x30      #now (2-9)
    lw t3, WORM_LENGTH  #load worm length
    add t2, t2, t3      #add food to length
    sw t2, WORM_LENGTH  #store it back
    bal Update_Score
    nop
    bal Create_Food     #make another food
    nop
    nop
No_Food_Move_Snake:

    jr s0         #otherwise done
    nop

New_Location_Move_Snake:
    lw t2, MAILBOX     #value of MAILBOX
    beq t2, 0x68, Left_Move_Snake
    nop
    beq t2, 0x6A, Down_Move_Snake
    nop
    beq t2, 0x6B, Up_Move_Snake
    nop
    beq t2, 0x6C, Right_Move_Snake
    nop
    b Done_Move_Snake
    nop
    
Left_Move_Snake:
    # y (column) decr
    addi t8, -1
    b Error_Move_Snake
    nop

Right_Move_Snake:
    # y (column) incr
    addi t8, 1
    b Error_Move_Snake
    nop

Down_Move_Snake:
    # x (row) incr
    addi t8, 0x0100
    b Error_Move_Snake
    nop

Up_Move_Snake:
    # y (column) decr
    addi t8, -0x0100
    b Error_Move_Snake
    nop

Error_Move_Snake:
    la t2, 0xA00004E0
    la t3, 0xA00004E2
    sw t8, 0(t2)      #copy t8 to t2 (address)
Loop_Move_Snake:
    beq t3, t2, Border_Check_Move_Snake
    nop
    lb t4, 0(t2)
    andi t4, t4, 0xF
    beq t4, 0xF, Is_F_Move_Snake
    nop
    beq t4, 0xA, Is_A_Move_Snake
    nop
    addi t2, 1
    b Loop_Move_Snake
    nop

Is_F_Move_Snake:
    lb t4, 0(t2)
    addi t4, t4, -6
    sb t4, 0(t2)
    addi t2, 1
    b Loop_Move_Snake
    nop

Is_A_Move_Snake:
    lb t4, 0(t2)
    addi t4, t4, 6
    sb t4, 0(t2)
    addi t2, 1
    b Loop_Move_Snake
    nop

Border_Check_Move_Snake:
    la t2, 0xA00004E0     # point t2 to new head location
    lw t8, 0(t2)          # copy corrected value from *t2 to t8
    #col<=3
    andi t4, t8, 0x00FF
    addi t4, t4, -0x0003
    bltz t4, Stop_Game
    nop
    #col>=79
    andi t4, t8, 0x00FF
    addi t4, t4, -0x0078
    bgtz t4, Stop_Game
    nop
    #row<=3
    andi t4, t8, 0xFF00
    addi t4, t4, -0x0300
    bltz t4, Stop_Game
    nop
    #row>=23
    andi t4, t8, 0xFF00
    addi t4, t4, -0x2200
    bgtz t4, Stop_Game
    nop

Body_Check_Move_Snake:
    # t8 is HEAD new position
    # t1 is WORM_LENGTH
    la t2, WORM
    addi t2, t2, 2
Check_Loop_Move_Snake:
    lh t4, 0(t2)
    beq t8, t4, Stop_Game
    nop
    addi t2, t2, 2
    addi t1, t1, -1
    bne t1, zero, Check_Loop_Move_Snake
    nop

    b Return_Move_Snake
    nop

Stop_Game:
    #sample code to prove Stop_Game is accessible
    li t2, 1
    sw t2, PAUSED
    #prints '%' at 12, 40 (center)
    li t2, 0x251240
    sw t2, TO_PRINT
    bal Print_Char_X_Y
    nop
    b Return_Move_Snake
    nop

.end Move_Snake
