#include <p32xxxx.h>
.global Update_Score
.text
.set noreorder
.set TO_PRINT, 0xA0000400
.set WORM_LENGTH, 0xA00004FC
.ent Update_Score

Update_Score:
    li s1, 0
    or s1, s1, ra

    lw t0, WORM_LENGTH
    addi t0, t0, -6    #length starts at 6, score starts at 0
    
    #display in LEDs
    sw t0, PORTE

    #print on UART
    addi t1, t0, -10
    bgez t1, Print_Double_Digits
    nop
    #single digit score
    addi t0, t0, 0x30
    sll t0, t0, 16
    ori t0, t0, 0x2441
    sw t0, TO_PRINT
    bal Print_Char_X_Y
    nop
    b Done_Update_Score
    nop

Print_Double_Digits:
    li t1, 10
    div t0, t1
    mflo t2     #grab tens place
    addi t2, t2, 0x30
    sll t2, t2, 16
    ori t2, t2, 0x2440
    sw t0, TO_PRINT
    bal Print_Char_X_Y
    nop

    div t0, t1
    mfhi t2     #grab ones place
    addi t2, t2, 0x30
    sll t2, t2, 16
    ori t2, t2, 0x2440
    sw t0, TO_PRINT
    bal Print_Char_X_Y
    nop

Done_Update_Score:
    jr s1
    nop

.end Update_Score
