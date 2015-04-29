#include <p32xxxx.h>
.global Verify_Read
.text
.set noreorder
.ent Verify_Read

Verify_Read:
li s0, 0
or s0, s0, ra
li t2, 0
la t0, 0xA0000200  # base address to store chars

LOAD_TIME_VERIFY_READ:

lb t1, 0(t0)
lb t2, 1(t0)
lb t3, 3(t0)
lb t4, 4(t0)

sw zero, 0(t0)
sw zero, 4(t0)

sb t1, 0(t0)
sb t2, 1(t0)
sb t3, 2(t0)
sb t4, 3(t0)

li t5, 36000
addi t1, -0x30
mult t1,t5
mflo t1
li t5, 3600
addi t2, -0x30
mult t2,t5
mflo t2
li t5, 600
addi t3, -0x30
mult t3,t5
mflo t3
li t5, 60
addi t4, -0x30
mult t4,t5
mflo t4

add t1, t1, t2
add t1, t1, t3
add t1, t1, t4

sw t1, 8(t0)
li t2, 0x15144
sw t2, 4(t0)

sub t1, t1, t2
bgtz t1, main
nop

la t1 ,0xA0000210
li t2, 0
sw t2, 8(t1)

jr s0
nop

.end Verify_Read
