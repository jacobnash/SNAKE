#include <p32xxxx.h>
.global main
.data
.text
.set noreorder

.set User_Input,   0xA0000200
.set ELAPSEDTIME,  0xA0000210
.set MAILBOX,      0xA0000440

Ask_User:
.ASCIZ "Please Enter a Time(HH:MM):"

.ent main

main:
la t0, Ask_User
la t3, User_Input
Load_Ask_User_String:
lb t2, 0(t0)                       # load char into t2
beq t2, zero, Done_Loading_String  # done with nothing loaded
nop                                
sb t2, 0(t3)                       # copy to memory
addi t0, t0, 1                     # increment t0 pointer
addi t3, t3, 1                     # increment t3 pointer
b Load_Ask_User_String             # more to copy
nop
Done_Loading_String:
bal UART_Setup
nop
restart:
bal Clear_Screen
nop
bal Print_Ask_User
nop
bal Read_Time
nop
bal Verify_Read
nop
bal Clear_Screen
nop
bal Print_Board
nop
li t1, 0x30303030
sw t1, ELAPSEDTIME
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
li t6, 0x68
sw t6, MAILBOX

Loop_Main:
b Loop_Main
nop

.end main