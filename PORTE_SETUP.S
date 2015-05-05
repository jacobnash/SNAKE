#include <p32xxxx.h>
						
.global PORTE_SETUP
.text
.set noreorder

PORTE_SETUP:

	sw zero, TRISE #clear TRISE
	sw zero, ODCE  #clear OCDE
    jr ra

.end PORTE_SETUP