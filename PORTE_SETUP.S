#include <p32xxxx.h>
.global PORTE_Setup
.text
.set noreorder
.ent PORTE_Setup

PORTE_Setup:
li s0, 0
or s0, s0, ra

sw zero, TRISE #clear TRISE
sw zero, ODCE  #clear OCDE
sw zero, PORTE #clear PORTE

jr s0
nop
.end PORTE_Setup