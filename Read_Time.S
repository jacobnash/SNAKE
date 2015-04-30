#include <p32xxxx.h>
.global Read_Time
.data
.text
.set noreorder
.ent Read_Time

Read_Time:
li s0, 0
or s0, s0, ra

la t0, 0xA0000200                  # base address to store chars
la t3, 0xA0000205

CharCheck_Read_Time:
lw t1, U1STA                       # read U1STA -> t1
andi t1, t1, 0x01                  # check if least sig bit (LSb) == 1
beq t1, zero, CharCheck_Read_Time  # if LSb == 0, check again
nop                                # otherwise continue

#store char
lb t2, U1RXREG                     # load value from U1RXREG -> t2
sb t2, 0(t0)                       # store value into memory
addi t0, 1                         # incr base address pointer

Echo_Read_Time:
sb t2, U1TXREG                     # char -> U1TXREG
bne t0, t3, CharCheck_Read_Time    # keep going
nop

#done
addi t0, 1
sb zero, 0(t0)
jr s0
nop

.end Read_Time