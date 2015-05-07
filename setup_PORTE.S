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
# Steup PORTE (LED module) to display score
# #***************************************************************
#include <p32xxxx.h>
.global setup_PORTE
.text
.set noreorder

.ent setup_PORTE

setup_PORTE:
li s0, 0
or s0, s0, ra

sw zero, TRISE #clear TRISE
sw zero, ODCE  #clear OCDE
sw zero, PORTE #clear PORTE

jr s0
nop

.end setup_PORTE