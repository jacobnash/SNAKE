#include <p32xxxx.h>
.global MAILBOXFULL
.text
.set noreorder
.ent MAILBOXFULL

.set MAILBOX, 0xA0000440
# j = 6a Down
# k = 6b Up
# l = 6c right
# h = 68 left

MAILBOXFULL:

	li s0, 0
	andi s0, s0, ra

	lw t0, U1RXREG
	sw t0, MAILBOX

  	jr ra
	nop

.end MailBox
