#include <p32xxxx.h>
.global Increment_Elapsed_Time
.text
.set noreorder
.set ELAPSEDTIME, 0xA0000218
.ent Increment_Elapsed_Time

Increment_Elapsed_Time:
li s0, 0
or s0, s0, ra

lw t1, ELAPSEDTIME
addi t1, t1, 1
sw t1, ELAPSEDTIME

jr s0
nop

.end Increment_Elapsed_Time