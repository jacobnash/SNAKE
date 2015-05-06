#include <p32xxxx.h>
.global Print_Snake
.text
.set noreorder
.ent Print_Snake

.set TO_PRINT, 0xA0000400
.set WORM, 0xA0000500
.set WORM_LENGTH, 0xA00004FC

# j = 6A Down
# k = 6B Up
# l = 6C right
# h = 68 left
# # = 23
# ^ = 5E
Print_Snake:
li s0, 0
or s0, s0, ra

la s6, WORM
la s5, WORM_LENGTH
lh s4, 0x0(s5)

Print_Head_Snake:
##PRINT HEAD##
lh s2, 0(s6)
li t1, 0x230000
or s2, s2, t1
sw s2, TO_PRINT
bal Print_Char_X_Y
nop

Print_Body_Snake:
addi s6, 2
lh s2, 0(s6)
li t1, 0x5E0000
or s2, s2, t1
sw zero, TO_PRINT
sw s2, TO_PRINT
bal Print_Char_X_Y
nop
addi s4, -1
bgez s4, Print_Body_Snake
nop

lb t2, 3(s5)
bgtz t2, Submitted_Print_Snake 
nop
lh s2, 0(s6)
li t1, 0x200000
or s2, s2, t1
sw zero, TO_PRINT
sw s2, TO_PRINT
bal Print_Char_X_Y
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
