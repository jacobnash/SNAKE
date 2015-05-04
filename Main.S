#include <p32xxxx.h>
.global main
.data
.text
.set noreorder

.set User_Input,  0xA0000200
.set ELAPSEDTIME, 0xA0000210
.set MAILBOX,     0xA0000440
.set RESTART,     0xA00004DD
.set PAUSED,      0xA00004DE
.set SPEED,       0xA00004DF

Ask_User:
.ASCIZ "Please Enter a Time(HH:MM):"

.ent main

main:
la t0, Ask_User
la t1, User_Input
Load_Ask_User_String:
lb t2, 0(t0)                       # load char into t2
beq t2, zero, Done_Loading_String  # done with loading string
nop                                
sb t2, 0(t1)                       # copy to memory
addi t0, t0, 1                     # increment t0 pointer
addi t1, t1, 1                     # increment t1 pointer
b Load_Ask_User_String             # more to copy
nop
Done_Loading_String:
bal UART_Setup
nop
bal Clear_Screen
nop
bal Print_Ask_User
nop
bal Read_Time
nop
bal Verify_Read
nop
Restart_Main:
bal Clear_Screen
nop
bal Print_Board
nop
li t3, 0x30303030
sw t3, ELAPSEDTIME
bal Print_Time
nop
bal Create_Worm
nop
bal Print_Snake
nop
bal Timer_Setup
nop
bal Interrupts_Setup
nop
#set initial direction to left
li t4, 0x68
sw t4, MAILBOX
#clear game flags
sb zero, RESTART
sb zero, PAUSED
sb zero, SPEED

Loop_Main:
#main loop will continually check flags

#Check if game paused
lb t0, PAUSED
bgtz t0, Check_Restart
nop

#Speed (number 0-9)
#lb t1, SPEED
#bne t1, zero, Change_Speed_Main
#nop

#Otherwise continue
b Loop_Main
nop

Check_Restart:
sw zero, T1CON          #Disable/Stop Timer1
lb t0, RESTART
bgtz t0, Restart_Main
nop
b Loop_Main
nop


Change_Speed_Main:
sw zero, T1CON          #Disable/Stop Timer1
sw zero, TMR1			#Clear Timer1

#t1 has char value from SPEED
andi t1, t1, 0xF
#t1 has decimal value (0-9)
li t2, 0x8000
beq t1, zero, Store_Period_Main
nop

mul t2, t2, t1
div t2, 10
mflo t2

Store_Period_Main:
sw t2, PR1				#Store Period
li t2, 0x8070
sw t2, T1CON			#Enable Timer1

b Loop_Main
nop

.end main