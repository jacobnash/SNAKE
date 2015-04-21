#include <p32xxxx.h>
.global Print_Snake
.text
.set noreorder
.ent Print_Snake

.set TO_PRINT, 0xA0000400
.set SNAKE, 0xA0000500
.set WORM_LENGTH, 0xA00004FC

# j = 6a Down
# k = 6b Up
# l = 6c right
# h = 68 left
# # = 23
# ^ = 5E
Print_Snake:
   and s0, s0, zero
   or s0, s0, ra

la s6, SNAKE
la s3, TO_PRINT
la s5, WORM_LENGTH
lw s4, 0x0(s5)

Print_Head_Snake:
##PRINT HEAD##
lh s2, 0(s6)
li t1, 0x230000
or s2, s2, t1
sw s2, 0x(s3)
BAL Print_Char_X_Y
nop
ADDi s6, 2
nop

Print_Body_Snake:
lh s2, 0(s6)
li t1, 0x5E0000
or s2, s2, t1
sw zero, 0(s3)
sw s2, 0(s3)
BAL Print_Char_X_Y
nop
ADDi s6, 2
addi s4, -1
bne zero, s4, Print_Body_Snake
nop






Submitted_Print_Snake:
  jr s0
  nop

.end Print_Snake
