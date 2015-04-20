#include <p32xxxx.h>

.global Print_Time
.text
.set noreorder
.ent Print_Time
.set TO_PRINT, 0xA0000400
.set ELAPSEDTIME, 0xA0000210
.set CLKTIME, 0xA0000200
.set STRING, 0xA0000300

Print_Time:
and s0, s0, zero
or s0, s0, ra

Go_Home_Print_Time:

li t0, 0x202401
sw t0, TO_PRINT
bal Print_Char_X_Y
nop
la t2, CLKTIME
la t0, STRING

li t1, 0x54
sb t1, 0x(t0)
addi t0, 1
li t1, 0x49
sb t1, 0x(t0)
addi t0, 1
li t1, 0x4D
sb t1, 0x(t0)
addi t0, 1
li t1, 0x45
sb t1, 0x(t0)
addi t0, 1
li t1, 0x3A
sb t1, 0x(t0)
addi t0, 1
li t1, 0x20
sb t1, 0x(t0)
addi t0, 1
lb t1, 0x0(t2)
sb t1, 0x(t0)
addi t0, 1
lb t1, 0x1(t2)
sb t1, 0x(t0)
addi t0, 1
li t1, 0x3A
sb t1, 0x(t0)
addi t0, 1
lb t1, 0x2(t2)
sb t1, 0x(t0)
addi t0, 1
lb t1, 0x3(t2)
sb t1, 0x(t0)
addi t0, 1
li t1, 0x20
sb t1, 0x(t0)
addi t0, 1
la t3, 0xA0000348

Filler_Print_Time:

li t1, 0x2D
sb t1, 0x(t0)
addi t0, 1

bne t0, t3, Filler_Print_Time
nop

la t2, ELAPSEDTIME
li t1, 0x20
sb t1, 0x(t0)
addi t0, 1
lb t1, 0x0(t2)
sb t1, 0x(t0)
addi t0, 1
lb t1, 0x1(t2)
sb t1, 0x(t0)
addi t0, 1
lb t1, 0x2(t2)
sb t1, 0x(t0)
addi t0, 1
lb t1, 0x3(t2)
sb t1, 0x(t0)
addi t0, 1
li t1, 0x20
sb t1, 0x(t0)
addi t0, 1
li t1, 0x20
sb t1, 0x(t0)
addi t0, 1
li t1, 0x00
sb t1, 0x(t0)
addi t0, 1

la s5, STRING
load_Print_Time:

        #Send each char from the address pointed by t0
        lb s2, 0x0(s5)                  # load char into t2
        beq s2, zero, Done_Print_Time   # t2 == 0 (NULL), done sending chars
        nop
        bal Print_Print_Time            # start subroutine ?printChar?
        nop
        #return from Print_Print_Time here
        add s5, s5, 1              # increment t0 pointer
        b load_Print_Time           # load next char
        nop
        Print_Print_Time:
        lw t1,U1STA                 # (status) U2STA (6210) -> t1
        andi t1,t1,0x200            # check transmit status
        bne t1,zero,Print_Print_Time # cannot transmit now, try again
        nop                         # otherwise continue
        sb s2,U1TXREG               # char (t2) -> U2TXREG (6220)
        jr ra                       # return to ?return from printChar here?
        nop

        Done_Print_Time:
        nop
        jr s0
        nop

        .end Print_Time
