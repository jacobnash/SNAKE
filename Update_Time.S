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
# Update, internally, the value of Clock and Elapsed time.
# #***************************************************************
#include <p32xxxx.h>
.global update_time
.data
.text
.set noreorder
.set ELAP_TIME, 0xA0000210
.set CLKTIME, 0xA0000200

.ent update_time

update_time:
li s0, 0
or s0, s0, ra

CLK_update_time:
la t0, CLKTIME
lw t1, 8(t0)

div t1, 36000
mflo t3
mfhi t4

addi t3, 0x30
add t1, zero, t4
sb t3, 0(t0)
div t1, 3600
mflo t3
mfhi t4
addi t3, 0x30
add t1, zero, t4
sb t3, 1(t0)
div t1, 600
mflo t3
mfhi t4

addi t3, 0x30
add t1, zero, t4
sb t3, 2(t0)
div t1, 60
mflo t3
mfhi t4

addi t3, 0x30
add t1, zero, t4
sb t3, 3(t0)


ELSP_update_time:
la t0, ELAP_TIME
lw t1, 8(t0)

div t1, 1000
mflo t3
mfhi t4

addi t3, 0x30
add t1, zero, t4
sb t3, 0(t0)
div t1, 100
mflo t3
mfhi t4

addi t3, 0x30
add t1, zero, t4
sb t3, 1(t0)
div t1, 10
mflo t3
mfhi t4

addi t3, 0x30
add t1, zero, t4
sb t3, 2(t0)
addi t4, 0x30
sb t4, 3(t0)

jr s0
nop

.end update_time
