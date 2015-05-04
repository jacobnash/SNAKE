#include <p32xxxx.h>

.global Keep_Score
.text
.set noreorder
.set WORM_LENGTH, 0xA00004FC
.set WORM, 0xA0000500
.SET MAILBOX, 0xA0000440
.set SCORE, 0xA00004F4
.set FOOD, 0xA00004F8
.ent Keep_Scores

Keep_Score:
    li s0, 0
    or s0, s0, ra

    la t0, SCORE
    la t1, FOOD
    la t2, WORM

    lh t3, 0(t1)
    lh t4, 0(t2)

    beq t3, t4, Add_Score
    nop
    b Submitted_Keep_Score
    nop

Add_Score:
    lw t3, 0(t0)
    lh t4, 2(t2)
   add t3, t3, t4
    sw t3, PORTE
    sw t3, SCORE
    sw zero, FOOD

Submitted_Keep_Score:
    jr s0
    nop






.end Keep_Score
