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
# Main function and starting point of program.
# #***************************************************************
#include <p32xxxx.h>
.global main
.data
.text
.set noreorder

.set USER_INPUT,     0xA0000200
.set ELAP_TIME,      0xA0000210
.set ELAP_TIME_RAW,  0xA0000218
.set WORM_BOX,       0xA0000230
.set PAUSED_BOX,     0xA0000240
.set RESTART_BOX,    0xA0000250
.set SPEED_BOX,      0xA0000260
.set GAME_STARTED,   0xA0000270

.ent main


ask:
.ASCIZ "Enter Time HH:MM:"

main:
#setup
sw zero, GAME_STARTED
bal setup_UART
nop
bal setup_PORTE
nop
bal screen_clear
nop

#ask user for input
la t0, ask
la t1, USER_INPUT
load_ask_string:
lb t2, 0(t0)                       # load char into t2
beq t2, zero, done_loading  # done with loading string
nop                                
sb t2, 0(t1)                       # copy to memory
addi t0, t0, 1                     # increment t0 pointer
addi t1, t1, 1                     # increment t1 pointer
b load_ask_string             # more to copy
nop
done_loading:
bal print_ask
nop
bal read_time
nop
bal verify_read
nop
RESTART_BOX_Main:
di
bal screen_clear
nop
bal print_board
nop
li t0, 0x30303030
sw t0, ELAP_TIME
li t0, 0
sw t0, ELAP_TIME_RAW
bal print_time
nop
bal create_worm
nop
bal create_food
nop
bal print_worm
nop

#clear game flags
sw zero, RESTART_BOX
sw zero, PAUSED_BOX
sw zero, SPEED_BOX

#Determine if timer(s) and interrupts should be started
lw t0, GAME_STARTED
bne t0, zero, Start_Timer1
nop
li t0, 1
sw t0, GAME_STARTED
bal setup_timer
nop
bal setup_interrupts
nop
b main_loop
nop

Start_Timer1:
li t1, 0x9000
sw t1, PR1				#Store Period
li t1, 0x8070
sw t1, T1CON			#Enable Timer1
ei

main_loop:
#continually check flags

#Check if game PAUSED_BOX
lw a0, PAUSED_BOX
bgtz a0, check_RESTART_BOX
nop

#SPEED_BOX (number 0-9)
lw a1, SPEED_BOX
bne a1, zero, change_SPEED_BOX
nop

#Otherwise continue
b main_loop
nop

check_RESTART_BOX:
sw zero, T1CON          #Stop Timer1
li t0, 0x30303030
sw t0, ELAP_TIME
lw a3, RESTART_BOX
bgtz a3, RESTART_BOX_Main
nop
b main_loop
nop

change_SPEED_BOX:
sw zero, SPEED_BOX
#a1 has char value from SPEED_BOX
andi a1, a1, 0xF
#a1 has decimal value (0-9)

sw zero, T1CON          #Disable/Stop Timer1
sw zero, TMR1			#Clear Timer1

li a2, 0xA000
beq a1, zero, Store_Period_Main
nop

mul a2, a2, a1
div a2, 10
mflo a2

Store_Period_Main:
sw a2, PR1				#Store Period
li a2, 0x8070
sw a2, T1CON			#Enable Timer1

b main_loop
nop

.end main
