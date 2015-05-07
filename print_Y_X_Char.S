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
# Function to print a char at X,Y. Parameters: 0(YY) 1(XX) 2(Char)
# #***************************************************************
#include <p32xxxx.h>
.global print_Y_X_Char
.data
.text
.set noreorder
.set TO_PRINT, 0xA0000220

.ent print_Y_X_Char

# 0x1B = 'ESC'
# 0x5B = '['
# 0x3B = ';'
# 0x66 = 'f'

print_Y_X_Char:
li s3, 0
or s3, s3, ra

la t0, TO_PRINT

#Send escape sequence via TXREG
li s7, 0x1B          # ESC
bal Transmit_print_Y_X_Char
nop

#Send escape sequence via TXREG
li s7, 0x5B          # [
bal Transmit_print_Y_X_Char
nop

lb s7, 1(t0)
srl s7, s7, 4
addi s7, s7, 0x30
bal Transmit_print_Y_X_Char
nop

lb s7, 1(t0)
andi s7, s7, 0x0F
addi s7, s7, 0x30
bal Transmit_print_Y_X_Char
nop

#Send escape sequence via TXREG
li s7,0x3B          # ;
bal Transmit_print_Y_X_Char
nop

lb s7, 0(t0)
srl s7, s7, 4
addi s7, s7, 0x30
bal Transmit_print_Y_X_Char
nop

lb s7, 0(t0)
andi s7, s7, 0x0F
addi s7, s7, 0x30
bal Transmit_print_Y_X_Char
nop

#Send escape sequence via TXREG
li s7,0x66          # f
bal Transmit_print_Y_X_Char
nop

#Send char
lb s7, 2(t0)
bal Transmit_print_Y_X_Char
nop
jr s3
nop
transmit_print_Y_X_Char:
lw t2, U1STA		   # U1STA (status)
andi t2, t2, 0x200     # check if able to Transmit_print_Y_X_Char
bne t2, zero, transmit_print_Y_X_Char   #cannot transmit right now
nop                    # otherwise continue
sw s7, U1TXREG	       # char -> U1TXREG
jr ra                  # return
nop

.end print_Y_X_Char