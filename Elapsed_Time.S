#include <p32xxxx.h>
.global Elapsed_Time
.text
.set noreorder
.ent Elapsed_Time
.set ELAPSEDTIME, 0xA0000218
.set CLKTIME, 0xA0000208

Elapsed_Time:


lw t1, ELAPSEDTIME
addi t1, 1
sw t1, ELAPSEDTIME

lw t1, CLKTIME
addi t1, 1
sw t1, CLKTIME

jr ra

.end Elapsed_Time
