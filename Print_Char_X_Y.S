#include <p32xxxx.h>
.global Print_Char_X_Y
.data
.text
.set noreorder
.set TO_PRINT, 0xA0000400
.ent Print_Char_X_Y

#0x1B = ESC
#0x5B = '['
#0x3B = ';'
#0x66 = 'f'

Print_Char_X_Y:
li s3, 0
or s3, s3, ra

la t0, TO_PRINT

#Send escape sequence via TXREG
li s7, 0x1B          # ESC
bal Transmit_Print_Char_X_Y
nop

#Send escape sequence via TXREG
li s7, 0x5B          # [
bal Transmit_Print_Char_X_Y
nop

lb s7, 1(t0)
srl s7, s7, 4
addi s7, s7, 0x30
bal Transmit_Print_Char_X_Y
nop

lb s7, 1(t0)
andi s7, s7, 0x0F
addi s7, s7, 0x30
bal Transmit_Print_Char_X_Y
nop

#Send escape sequence via TXREG
li s7,0x3B          # ;
bal Transmit_Print_Char_X_Y
nop

lb s7, 0(t0)
srl s7, s7, 4
addi s7, s7, 0x30
bal Transmit_Print_Char_X_Y
nop

lb s7, 0(t0)
andi s7, s7, 0x0F
addi s7, s7, 0x30
bal Transmit_Print_Char_X_Y
nop

#Send escape sequence via TXREG
li s7,0x66          # f
bal Transmit_Print_Char_X_Y
nop

#Send char
lb s7, 2(t0)
bal Transmit_Print_Char_X_Y
nop
jr s3
nop
Transmit_Print_Char_X_Y:
lw t2, U1STA		   # U1STA (status)
andi t2, t2, 0x200     # check if able to Transmit_Print_Char_X_Y
bne t2, zero, Transmit_Print_Char_X_Y   #cannot transmit right now
nop                    # otherwise continue
sw s7, U1TXREG	       # char -> U1TXREG
jr ra                  # return
nop

.end Print_Char_X_Y