#include <p32xxxx.h>
.global main
.data

.text
.set noreorder
.ent main

.set ELAPSEDTIME, 0xA0000210
.SET MAILBOX,     0xA0000440
What_Time_is_it:
.ASCIZ "Please Enter a Time(HH:MM):"



        main:
       
        .set WHATTIMEISIT, 0xA0000200
        la t0, What_Time_is_it
        la t3, WHATTIMEISIT
        Load_Char_Store_Time_String:
#Send each char from the address pointed by t0
        lb t2, 0x0(t0)                                   # load char into t2
        beq t2, zero, Done_Store_Time_String  
        nop                                              # otherwise continue
        sb t2, 0x0(t3)                                   #placing in mem
        addi t0, t0, 1                                   #increment t0 pointer
        addi t3, t3, 1
        b Load_Char_Store_Time_String                    # load next char
        nop
        Done_Store_Time_String:
        nop


        bal UART_SETUP
        nop
restart:
        bal Clear_Screen
        nop
        bal Print_Time_String
        nop
        li t1, 0x30303030
        sw t1, ELAPSEDTIME
        bal Read_Time
        nop
        bal Verify_Read
        nop
        bal Clear_Screen
        nop
        bal Print_Board
        nop
        bal Print_Time
        nop
        bal Create_Worm
        nop
Loop:
        la t1, MAILBOX
        li t4, 0x4B  #ASCII 'K'
        sw t4, 0(t1)
        lw t0, 0(t1)
        bgtz t0, MAILBOXFULL
        nop
        b Loop

MAILBOXFULL:
        bal Print_Time
        nop
        bal Move_Snake
        nop
        nop
        b Loop
        nop

.end main
