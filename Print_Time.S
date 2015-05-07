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
# Prints both the Clock and Elapsed time.
# #***************************************************************
#include <p32xxxx.h>
.global print_time
.data
.text
.set noreorder
.ent print_time
.set TO_PRINT, 0xA0000220
.set ELAP_TIME, 0xA0000210
.set CLKTIME, 0xA0000200
.set STRING, 0xA0000300

print_time:
li s0, 0
or s0, s0, ra

Go_Home_print_time:
li t0, 0x202401
sw t0, TO_PRINT
bal print_Y_X_Char
nop
la t2, CLKTIME
la t0, STRING

li t1, 0x54
sb t1, 0(t0)
addi t0, 1

li t1, 0x49
sb t1, 0(t0)
addi t0, 1

li t1, 0x4D
sb t1, 0(t0)
addi t0, 1

li t1, 0x45
sb t1, 0(t0)
addi t0, 1

li t1, 0x3A
sb t1, 0(t0)
addi t0, 1

li t1, 0x20
sb t1, 0(t0)
addi t0, 1

lb t1, 0(t2)
sb t1, 0(t0)
addi t0, 1

lb t1, 1(t2)
sb t1, 0(t0)
addi t0, 1

li t1, 0x3A
sb t1, 0(t0)
addi t0, 1

lb t1, 2(t2)
sb t1, 0(t0)
addi t0, 1

lb t1, 3(t2)
sb t1, 0(t0)
addi t0, 1

li t1, 0x20
sb t1, 0(t0)
addi t0, 1

la t3, 0xA0000348

la t2, ELAP_TIME
li t1, 0x20
sb t1, 0(t0)
addi t0, 1

lb t1, 0(t2)
sb t1, 0(t0)
addi t0, 1

lb t1, 1(t2)
sb t1, 0(t0)
addi t0, 1

lb t1, 2(t2)
sb t1, 0(t0)
addi t0, 1

lb t1, 3(t2)
sb t1, 0(t0)
addi t0, 1

li t1, 0x20
sb t1, 0(t0)
addi t0, 1

li t1, 0x20
sb t1, 0(t0)
addi t0, 1

li t1, 0
sb t1, 0(t0)
addi t0, 1

la s5, STRING
load_print_time:
#Send each char from the address pointed by t0
lb s2, 0(s5)                    # load char into s2
beq s2, zero, Done_print_time   # s2 == 0 (NULL), done sending chars
nop
bal Print_print_time            # print time
nop
addi s5, 1                      # increment t0 pointer
b load_print_time               # load next char
nop

Print_print_time:
lw t1, U1STA                    # (status) U1STA -> t1
andi t1, t1, 0x200              # check transmit status
bne t1, zero, Print_print_time  # cannot transmit now, try again
nop                             # otherwise continue
sb s2, U1TXREG                  # char (s2) -> U1TXREG

jr ra                           # return
nop

Done_print_time:
jr s0
nop
.end print_time