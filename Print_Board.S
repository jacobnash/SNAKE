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
# Print board in terminal
# #***************************************************************
#include <p32xxxx.h>
.global print_board
.data
.text
.set PRINT_REF, 0xA0000330
.set noreorder

.ent print_board

print_board:
li s0, 0
or s0, s0, ra

la t0, PRINT_REF
Move_Cursor_print_board:
li t1, 0x1B
sb t1, 0(t0)
addi t0, 1
li t1, 0x5B
sb t1, 0(t0)
addi t0, 1
li t1, 0x31
sb t1, 0(t0)
addi t0, 1
li t1, 0x3b
sb t1, 0(t0)
addi t0, 1
li t1, 0x31
sb t1, 0(t0)
addi t0, 1
li t1, 0x66
sb t1, 0(t0)
li t2, 158
li t3, 0x58
#print out 74 x

Print_X:
addi t0, 1
addi t2, -1
sb t3, 0(t0)
bne zero, t2, Print_X
nop
li t4, 20
Print_Other:
li t5, 4
Print_4_X:
addi t0, 1
addi t5, -1
sb t3, 0(t0)
bne zero, t5, Print_4_X
nop
li t6, 76
Print_Space:
addi t6, -1
addi t0, 1
li t1, 0x20
sb t1, 0(t0)
bne zero, t6, Print_Space
nop
addi t4, -1
bne  t4, zero, Print_Other
nop
li t2, 162
li t3, 0x58
#print out 74 x

Print_X_last:
addi t0, 1
addi t2, -1
sb t3, 0(t0)
bne zero, t2, Print_X_last
nop
addi t0, 1
li t1, 0
sb t1, 0(t0)
la t0, PRINT_REF
load_print_board:
lb t2, 0(t0)                    # load char into t2
beq t2, zero, Done_print_board  # t2 == 0 (NULL), done sending chars
nop                             # otherwise more chars to send
bal Print_print_board           # start Print_print_board™
nop
addi t0, t0, 1                  # increment t0 pointer
b load_print_board              # load next char
nop
Print_print_board:
lw t1, U1STA                    # (status) U1STA -> t1
andi t1, t1, 0x200              # check transmit status
bne t1, zero, Print_print_board # cannot transmit now, try again
nop                             # otherwise continue
sb t2, U1TXREG                  # char (t2) -> U1TXREG
jr ra                           # return™
nop

Done_print_board:
jr s0
nop

.end print_board