#include <p32xxxx.h>
						
.global Move_Snake
.text
.set noreorder
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
    #save current head location
    lw s2, 0(t0) #old location
    lw s1, 0(t0) #new location
    #find new location
    b New_Location_Move_Snake
    nop
    #s1 has new location
    sw s1, 0(t0)
    lw s1, 1(t0)
    #give old to next body
    sw s2, 1(t0)

    #save current body1 location
    #move body1 to saved location
    #save current bodyN (tail) location
    #move bodyN to saved location

    #Direction
    #Snake length
    #
New_Location_Move_Snake:
    #t3 = address of MAILBOX
    la t3, MAILBOX
    #put value into t4
    lw t4, 0(t3)
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
Left_Move_Snake:
    # y (column) decr
    addi t1, -1
    b Error_Move_Snake
    nop

Right_Move_Snake:
    # y (column) incr
    addi t1, 1
    b Error_Move_Snake
    nop

Down_Move_Snake:
    # x (row) incr
    addi t1, 0x0100
    b Error_Move_Snake
    nop

Up_Move_Snake:
    # y (column) decr
    addi t1, -0x0100
    b Error_Move_Snake
    nop

Error_Move_Snake:
    la s6, 0xA0000490
    la t5, 0xA0000492
    sw t1, 0(s6)
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



.end Move_Snake
