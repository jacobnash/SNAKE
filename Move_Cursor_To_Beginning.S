#include <p32xxxx.h>
.global Move_Cursor_To_Beginning
.data
.text
.set noreorder
.ent Move_Cursor_To_Beginning
.set TO_PRINT, 0xA0000400

#0x1B = ESC
#0x5B = '['
#0x3B = ';'
#0x66 = 'f'

Move_Cursor_To_Beginning:
li s1, 0
or s1, s1, ra

la t0, TO_PRINT

#Send escape sequence via TXREG
li s7, 0x1B          # ESC
bal Transmit_Move_Cursor_To_Beginning
nop

#Send escape sequence via TXREG
li s7, 0x5B          # [
bal Transmit_Move_Cursor_To_Beginning
nop

li s7, 0x31
bal Transmit_Move_Cursor_To_Beginning
nop

#Send escape sequence via TXREG
li s7,0x3B          # ;
bal Transmit_Move_Cursor_To_Beginning
nop

li s7, 0x31
bal Transmit_Move_Cursor_To_Beginning
nop

#Send escape sequence via TXREG
li s7,0x66          # f
bal Transmit_Move_Cursor_To_Beginning
nop
nop
jr s1
nop

Transmit_Move_Cursor_To_Beginning:
li s2, 0
or s2, s2, ra
lw t2, U1STA		   # U1STA (status)
andi t2, t2, 0x200     # check if able to Transmit_Move_Cursor_To_Beginning
bne t2, zero, Transmit_Move_Cursor_To_Beginning   #cannot transmit right now
nop                    # otherwise continue
sw s7, U1TXREG	       # char -> U1TXREG
jr s2                  # return
nop

.end Move_Cursor_To_Beginning