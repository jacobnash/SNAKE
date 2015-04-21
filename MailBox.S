#include <p32xxxx.h>
.global MailBox
.text
.set noreorder
.ent MailBox

.set MAILBOX, 0xA0000440
# j = 6a Down
# k = 6b Up
# l = 6c right
# h = 68 left

MailBox:


lw t0, U1RXREG

sw t0, MAILBOX
  eret
nop

.end MailBox
