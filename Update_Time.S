#include <p32xxxx.h>

.global Update_Time
.text
.set noreorder
.ent Print_Time
.set ELAPSEDTIME, 0xA0000210
.set CLKTIME, 0xA0000200

Update_Time:
and s0, s0, zero
or s0, s0, ra


CLK_Update_Time:
la t0, CLKTIME
lw t1, 8(t0)

    div t1, 36000
    mflo t3
    mfhi t4
    nop
    addi t3, 0x30
    add t1, zero, t4
    sb t3, 0(t0)
 div t1, 3600
    mflo t3
    mfhi t4
    nop
    addi t3, 0x30
    add t1, zero, t4
    sb t3, 1(t0)
div t1, 600
    mflo t3
    mfhi t4
    nop
    addi t3, 0x30
    add t1, zero, t4
    sb t3, 2(t0)
div t1, 60
    mflo t3
    mfhi t4
    nop
    addi t3, 0x30
    add t1, zero, t4
    sb t3, 3(t0)


ELSP_Update_Time:
la t0, ELAPSEDTIME
lw t1, 8(t0)

    div t1, 1000
    mflo t3
    mfhi t4
    nop
    addi t3, 0x30
    add t1, zero, t4
    sb t3, 0(t0)
    div t1, 100
    mflo t3
    mfhi t4
    nop
    addi t3, 0x30
    add t1, zero, t4
    sb t3, 1(t0)
    div t1, 10
    mflo t3
    mfhi t4
    nop
    addi t3, 0x30
    add t1, zero, t4
    sb t3, 2(t0)
    addi t4, 0x30
    sb t4, 3(t0)



Done_Update_Time:
nop
jr s0
nop

.end Update_Time
