#include <p32xxxx.h>
.global Increment_Clock_Time
.text
.set noreorder
.set CLKTIME, 0xA0000208
.ent Increment_Clock_Time

Increment_Clock_Time:
li s0, 0
or s0, s0, ra

lw t1, CLKTIME
addi t1, t1, 1
sw t1, CLKTIME

jr s0
nop

.end Increment_Clock_Time
