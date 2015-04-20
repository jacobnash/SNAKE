#include <p32xxxx.h>
						
.global Move_Snake
.text
.set noreorder
.set WORM, 0xA0000500
.set WORM_LENGTH, 0xA0000700
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
    lw s2, 0(t0)  #old location
    lw s1, 0(t0)  #new location
    #find new location
    b New_Location_Move_Snake
    nop
    #s1 has new location
Cont_Move_Snake:
    sw s1, 0(t0)  #replace current body with new value
    lw s1, 1(t0)  #save next body value
    sw s2, 1(t0)  #replace next body with current body value

    #repeat?

    #Direction
    #Snake length
New_Location_Move_Snake:
    la t3, MAILBOX   #address of MAILBOX
    lw t4, 0(t3)     #value of MAILBOX
    beq t4, 0x48, Left_Move_Snake
    nop
    beq t4, 0x4A, Down_Move_Snake
    nop
    beq t4, 0x4B, Up_Move_Snake
    nop
    beq t4, 0x4C, Right_Move_Snake
    nop
    #beq t4, 0x43, Stop_Game
    #nop
    b New_Location_Move_Snake
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
    la s6, 0xA0000490
    la t5, 0xA0000492
    sw s1, 0(s6)
Loop_Move_Snake:
    beq t5, s6, Load_Move_Snake
    nop
    lb s5, 0(s6)
    andi s5, s5, 0xF
    beq s5, 0xF, Is_F_Move_Snake
    nop
    beq s5, 0xA, Is_A_Move_Snake
    nop
    addi s6, 1
    b Loop_Move_Snake
    nop

Is_F_Move_Snake:
    addi s5, -6
    sw s5, 0(s6)
    addi s6, 1
    b Loop_Move_Snake
    nop

Is_A_Move_Snake:
    addi s5, 6
    sw s5, 0(s6)
    addi s6, 1
    b Loop_Move_Snake
    nop

Load_Move_Snake:
    li s1, 0
    or s1, s5, s1 #copy s5 to s1 
    b Cont_Move_Snake
    nop 

.end Move_Snake
