# ************************************************************* #
# ECE 344L - Microprocessors - Spring 2015
#
# Name: Matthew Greci and Mitchell Jackson
#
#     Laboratory Number: 6             Due Date: 7 May 2015
#
#
# Lab Group: Matthew Greci and Mitchell Jackson
#
#
# #*************************************************************** #
# This is used to clear the terminal. Uses the VT-100 escape
# sequence.
# #***************************************************************
#include <p32xxxx.h>
.global screen_clear
.data
.text
.set noreorder
.set PRINT_REF, 0xA0000330
.ent screen_clear

screen_clear:
li s0, 0
or s0, s0, ra

#create clear screen sequence 'ESC[2J'
la t0, PRINT_REF
li t1, 0x1B    #'ESC'
sb t1, 0x0(t0)
li t1, 0x5B    #'['
sb t1, 0x1(t0)
li t1, 0x32    #'2'
sb t1, 0x2(t0)
li t1, 0x4a    #'J'
sb t1, 0x3(t0)
#move cursor to beginning
li t1, 0x1B    #'ESC'
sb t1, 0x4(t0)
li t1, 0x5B    #'['
sb t1, 0x5(t0)
li t1, 0x30    #'0'
sb t1, 0x6(t0)
li t1, 0x3b    #';'
sb t1, 0x7(t0)
li t1, 0x30    #'0'
sb t1, 0x8(t0)
li t1, 0x48    #'H'
sb t1, 0x9(t0)
li t1, 0       #empty char (NULL)
sb t1, 0xA(t0)

Load_Screen_Char:
lb t1, 0(t0)                     # load char
beq t1, zero, done_screen_clear  # char == 0 (NULL), done sending chars
nop                              # otherwise (more chars to send)
bal Print_Screen_Char            # print char
nop
addi t0, t0, 1                   # move pointer forward
b Load_Screen_Char               # go again
nop
Print_Screen_Char:
lw t2, U1STA
andi t2, t2, 0x200               # check transmit status
bne t2, zero, Print_Screen_Char  # cannot transmit, try again
nop                              # otherwise
sb t1, U1TXREG                   # char -> U1TXREG
jr ra                            # return™
nop

done_screen_clear:
jr s0
nop

.end screen_clear