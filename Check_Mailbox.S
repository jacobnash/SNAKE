#include <p32xxxx.h>
.global Check_Mailbox
.text
.set noreorder
.ent Check_Mailbox

.set MAILBOX, 0xA0000440
# j = 6a Down
# k = 6b Up
# l = 6c right
# h = 68 left

Check_Mailbox:
   and s0, s0, zero
   or s0, s0, ra

lw t0, MAILBOX

b  Submitted_Check_Mailbox

Submitted_Check_Mailbox:
  sw zero, MAILBOX
  jr s0
  nop

.end Check_Mailbox
