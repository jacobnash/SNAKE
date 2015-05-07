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
# Setup and enable interrupts
# #***************************************************************
#include <p32xxxx.h>
.global setup_interrupts
.data
.text
.set noreorder
.ent setup_interrupts

setup_interrupts:
    li s0, 0
    or s0, s0, ra

	#Initialize Interupts
	li t0, 0x9FC01000		#Setup ebase address = 9FC01000
	MTC0 t0, $15, 1			#Store ebase address to co-prossesor
	li t0, 0x20 			#Set vector spacing
	MTC0 t0, $12, 1			#Configure vector spacing

    #clear interrupts
	sw zero, IFS0			#Clear IFS0
	sw zero, IFS1			#Clear IFS1
	sw zero, IEC0			#Clear IEC0
	sw zero, IEC1			#Clear IEC1

    #set priorities
	li t1, 0x19
	sw t1, IPC6				#Set UART1 priority
	li t1, 0x1A
	sw t1, IPC1         	#Set Timer1 priority
	li t1, 0x1B
	sw t1, IPC2         	#Set Timer2 priority

    #enable multivector
	li t1, 0x1000			#Bit pattern for multivector
	sw t1, INTCON			#Enable multivector

    #set interrupts bits
	li t1, 0x08000110
	sw t1, IEC0      		#Enable U1RX, Timer1, Timer2 interrupts

    #enable interrupts
	ei

    jr s0
    nop

.end setup_interrupts
