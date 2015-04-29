#include <p32xxxx.h>
.global Increment_Times
.text
.set noreorder
.set ELAPSEDTIME, 0xA0000218
.set CLKTIME, 0xA0000208
.ent Increment_Times

Increment_Times:
li s0, 0
or s0, s0, ra

lw t1, ELAPSEDTIME
addi t1, 1
sw t1, ELAPSEDTIME

lw t1, CLKTIME
addi t1, 1
sw t1, CLKTIME

jr s0
nop

.end Increment_Times
