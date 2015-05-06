#include <p32xxxx.h>
.global main
.data
.text
.set noreorder

.set User_Input,     0xA0000200
.set ELAPSEDTIME,    0xA0000210
.set ELAPSEDTIMERAW, 0xA0000218
.set MAILBOX,        0xA0000440
.set PAUSED,         0xA00004D0
.set RESTART,        0xA00004D4
.set SPEED,          0xA00004D8
.set GAME_STARTED,   0xA0000B00

Ask_User:
.ASCIZ "Please Enter a Time(HH:MM):"

.ent main

main:
sw zero, GAME_STARTED
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
bal PORTE_Setup
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
di
bal Clear_Screen
nop
#bal Move_Cursor_To_Beginning
#nop
bal Print_Board
nop
li t0, 0x30303030
sw t0, ELAPSEDTIME
li t0, 0
sw t0, ELAPSEDTIMERAW
bal Print_Time
nop
bal Create_Worm
nop
bal Create_Food
nop
bal Print_Snake
nop

#clear game flags
sw zero, RESTART
sw zero, PAUSED
sw zero, SPEED

#Determine if timer(s) and interrupts should be started
lw t0, GAME_STARTED
bne t0, zero, Start_Timer1
nop
li t0, 1
sw t0, GAME_STARTED
bal Timer_Setup
nop
bal Interrupts_Setup
nop
b Loop_Main
nop

Start_Timer1:
li t1, 0x9000
sw t1, PR1				#Store Period
li t1, 0x8070
sw t1, T1CON			#Enable Timer1
ei

Loop_Main:
#main loop will continually check flags
li a0, 0
li a1, 0

#Check if game paused
lw a0, PAUSED
bgtz a0, Check_Restart
nop

#Speed (number 0-9)
lw a1, SPEED
bne a1, zero, Change_Speed_Main
nop

#Otherwise continue
b Loop_Main
nop

Check_Restart:
sw zero, T1CON          #Stop Timer1
li t0, 0x30303030
sw t0, ELAPSEDTIME
lw a3, RESTART
bgtz a3, Restart_Main
nop
b Loop_Main
nop

Change_Speed_Main:
sw zero, SPEED
#a1 has char value from SPEED
andi a1, a1, 0xF
#a1 has decimal value (0-9)

sw zero, T1CON          #Disable/Stop Timer1
sw zero, TMR1			#Clear Timer1

li a2, 0x9000
beq a1, zero, Store_Period_Main
nop

mul a2, a2, a1
div a2, 10
mflo a2

Store_Period_Main:
sw a2, PR1				#Store Period
li a2, 0x8070
sw a2, T1CON			#Enable Timer1

b Loop_Main
nop

.end main
