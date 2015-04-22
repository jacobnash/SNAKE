#include <p32xxxx.h>
						
.global Move_Snake
.text
.set noreorder
.set WORM_LENGTH, 0xA00004FC
.set WORM, 0xA0000500
.SET MAILBOX, 0xA0000440
.ent Move_Snake

#0x43 - 'C' start/stop
#0x48 - 'H' left
#0x4A - 'J' down
#0x4B - 'K' up
#0x4C - 'L' right

Move_Snake:
    li s0, 0
    or s0, s0, ra
    
    la t0, WORM
    la t1, WORM_LENGTH
    lw t2, 0(t1)  #worm length value
    #save current head location
    lh s2, 0(t0)  #old location
    lh s1, 0(t0)  #new location
    #find new location
    b New_Location_Move_Snake
    nop
    #s1 has new location
Cont_Move_Snake:
    lh s2, 0(t0)  #s2 = current value
    sh s1, 0(t0)  #replace current body with new value
    lh s1, 2(t0)  #save next body value
    sh s2, 2(t0)  #replace next body with current body value
    addi t0, 4    #incr worm pointer
    addi t2, -1   #decr loop counter
    bgtz t2, Cont_Move_Snake  #continue looping worm
    nop
Done_Move_Snake:
    jr s0         #otherwise done
    nop

New_Location_Move_Snake:
    lw t3, MAILBOX     #value of MAILBOX
    beq t3, 0x68, Left_Move_Snake
    nop
    beq t3, 0x6A, Down_Move_Snake
    nop
    beq t3, 0x6B, Up_Move_Snake
    nop
    beq t3, 0x6C, Right_Move_Snake
    nop
    #beq t3, 0x63, Stop_Game
    #nop
    b Done_Move_Snake
    nop
    
Left_Move_Snake:
    # y (column) decr
    addi s1, -1
    b Error_Move_Snake
    nop

Right_Move_Snake:
    # y (column) incr
    addi s1, 1
    b Error_Move_Snake
    nop

Down_Move_Snake:
    # x (row) incr
    addi s1, 0x0100
    b Error_Move_Snake
    nop

Up_Move_Snake:
    # y (column) decr
    addi s1, -0x0100
    b Error_Move_Snake
    nop

Error_Move_Snake:
    la t5, 0xA00004F0
    la t6, 0xA00004F2
    sw s1, 0(t5)      #copy s1 to t5 (address)
Loop_Move_Snake:
    beq t6, t5, Border_Check_Move_Snake
    nop
    lb t7, 0(t5)
    andi t7, 0xF
    beq t7, 0xF, Is_F_Move_Snake
    nop
    beq t7, 0xA, Is_A_Move_Snake
    nop
    addi t5, 1
    b Loop_Move_Snake
    nop

Is_F_Move_Snake:
    lb t7, 0(t5)
    addi t7, -6
    sb t7, 0(t5)
    addi t5, 1
    b Loop_Move_Snake
    nop

Is_A_Move_Snake:
    lb t7, 0(t5)
    addi t7, 6
    sb t7, 0(t5)
    addi t5, 1
    b Loop_Move_Snake
    nop

Border_Check_Move_Snake:
    addi t5, -2
    lw s1, 0(t5)
    nop

Load_Move_Snake:
    b Cont_Move_Snake
    nop 

.end Move_Snake
