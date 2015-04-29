#include <p32xxxx.h>
.global Interrupts_Setup
.data
.text
.set noreorder
.ent Interrupts_Setup

Interrupts_Setup:
    li s0, 0
    or s0, s0, ra

	#Initialize Interupts
	li t1, 0x9FC01000		#Setup ebase address = 9FC01000
	MTC0 t1, $15, 1			#Store ebase address to co-prossesor
	li t1, 0x20 			#Set vector spacing
	MTC0 t1, $12, 1			#Configure vector spacing
	sw zero, IFS0			#Clear IFS0
	sw zero, IFS1			#Clear IFS1
	sw zero, IEC0			#Clear IEC0
	sw zero, IEC1			#Clear IEC1
	li t1, 0x19
	sw t1, IPC1         	#Set Timer1 priority
	li t1, 0x1A
	sw t1, IPC6				#Set UART1 priority
	li t1, 0x1000			#Bit pattern for multivector
	sw t1, INTCON			#Enable multivector
	li t1, 0x08000010	    #Timer 1 and U1RX enable bits
	sw t1, IEC0      		#Enable Timer 1 and U1RX interrupts
    li t1, 0x08000010
	ei 						#Enable Interrupts

    jr s0
    nop

.end Interrupts_Setup
