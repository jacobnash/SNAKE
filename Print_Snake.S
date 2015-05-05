#include <p32xxxx.h>
.global Print_Snake
.text
.set noreorder
.ent Print_Snake

.set TO_PRINT, 0xA0000400
.set SNAKE, 0xA0000500
.set WORM_LENGTH, 0xA00004FC

# j = 6A Down
# k = 6B Up
# l = 6C right
# h = 68 left
# # = 23
# ^ = 5E
Print_Snake:
   and s0, s0, zero
   or s0, s0, ra

la s6, SNAKE
la s3, TO_PRINT
la s5, WORM_LENGTH
lh s4, 0x0(s5)

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

lb t2, 3(s5)
bgtz t2, Submitted_Print_Snake 
nop
lh s2, 0(s6)
li t1, 0x200000
or s2, s2, t1
sw zero, 0(s3)
sw s2, 0(s3)
BAL Print_Char_X_Y
nop
jr s0
nop




Submitted_Print_Snake:
  lb t1, 0(s5)
  addi t1, 1
  sb t1, 0(s5)
  addi t2, -1
  sb t2, 3(s5)
  jr s0
  nop

.end Print_Snake
