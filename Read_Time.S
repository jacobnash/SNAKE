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
# Read the input the user gives.
# #***************************************************************
#include <p32xxxx.h>
.global read_time
.data
.text
.set noreorder
.set USER_INPUT, 0xA0000200

.ent read_time

read_time:
li s0, 0
or s0, s0, ra

la t0, USER_INPUT                  # base address to store chars
addi t3, t0, 5

check_read_time:
lw t1, U1STA                       # read U1STA -> t1
andi t1, t1, 0x01                  # check if least sig bit (LSb) == 1
beq t1, zero, check_read_time      # if LSb == 0, check again
nop                                # otherwise continue

#store char
lb t2, U1RXREG                     # load value from U1RXREG -> t2
sb t2, 0(t0)                       # store value into memory
addi t0, 1                         # incr base address pointer

sb t2, U1TXREG                     # char -> U1TXREG
bne t0, t3, check_read_time        # keep going
nop

#done
addi t0, 1
sb zero, 0(t0)
jr s0
nop

.end read_time