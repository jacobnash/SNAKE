#include <p32xxxx.h>
.global Clear_Screen
.data
.text
.set noreorder
.ent Clear_Screen

Clear_Screen:
li s0, 0
or s0, s0, ra

#create clear screen sequence
la t0, 0xA0000330
li t1, 0x1B
sb t1, 0x0(t0)
li t1, 0x5B
sb t1, 0x1(t0)
li t1, 0x32
sb t1, 0x2(t0)
li t1, 0x4a
sb t1, 0x3(t0)
li t1, 0x1B
sb t1, 0x4(t0)
li t1, 0x5B
sb t1, 0x5(t0)
li t1, 0x30
sb t1, 0x6(t0)
li t1, 0x3b
sb t1, 0x7(t0)
li t1, 0x30
sb t1, 0x8(t0)
li t1, 0x48
sb t1, 0x9(t0)
li t1, 0
sb t1, 0xA(t0)

Load_Screen_Char:
lb t2, 0(t0)                     # load char into t2
beq t2, zero, Screen_Cleared     # t2 == 0 (NULL), done sending chars
nop                              # otherwise continue (more chars to send)
bal Print_Screen_Char            # print clear char
nop
addi t0, t0, 1                   # increment t0 pointer
b Load_Screen_Char               # load next char
nop
Print_Screen_Char:
lw t1, U1STA                     # (status) U1STA -> t1
andi t1, t1, 0x200               # check transmit status
bne t1, zero, Print_Screen_Char  # cannot transmit now, try again
nop                              # otherwise continue
sb t2, U1TXREG                   # char (t2) -> U1TXREG
jr ra                            # return™
nop
Screen_Cleared:
jr s0
nop

.end Clear_Screen