#include <p32xxxx.h>
.global main
.text
.set noreorder
.ent main
.set TO_PRINT, 0xA0000400

#0x1B = ESC
#0x5B = '['
#0x3B = ';'
#0x66 = 'f'

main:
	#Initialize UART
	li t1, 0x20			#Set up baud rate
   	sw t1, U1BRG			#Store baud rate bits
   	li t1, 0x8B00			#Set enable bits
   	sw t1, U1MODE			#Store enable bits
   	li t1, 0x1400			#Set UART enable bits
   	sw t1, U1STA			#Store to UART1 SET

	#Test if UART is working
	#Are you using UART1 or UART2?
	#li t1, 0x2A
	#trans:
	#lw t0, U1STA		 # U1STA (status)
    #andi t0,t0,0x200     # check if able to transmit
    #bne t0,zero,trans # cannot transmit now, try again
    #nop                  # otherwise continue
    #sw t1,U1TXREG	     # char -> U1TXREG

	#Place values into memory to for Print_Char_X_Y
	la s0, TO_PRINT
	li t0, 0x23          # char to print
	sb t0, 2(s0)
	li t0, 0x1240        # '1' '5' '4' '0'
	sh t0, 0(s0)         # row 15, col 40

	bal Print_Char_X_Y
	nop
	
done:
	nop
	b done
	nop

.end main
