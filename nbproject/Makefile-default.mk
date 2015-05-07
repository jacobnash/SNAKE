#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SNAKE.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SNAKE.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=config.S ISR_UART.S screen_clear.S create_food.S create_worm.S incr_clk.S incr_elapsed.S setup_interrupts.S ISR_timer1.S ISR_timer2.S move_worm.S setup_PORTE.S print_ask.S print_board.S print_time.S update_time.S print_worm.S print_Y_X_Char.S verify_read.S vector.S read_time.S setup_timer.S setup_UART.S update_score.S main.S

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/config.o ${OBJECTDIR}/ISR_UART.o ${OBJECTDIR}/screen_clear.o ${OBJECTDIR}/create_food.o ${OBJECTDIR}/create_worm.o ${OBJECTDIR}/incr_clk.o ${OBJECTDIR}/incr_elapsed.o ${OBJECTDIR}/setup_interrupts.o ${OBJECTDIR}/ISR_timer1.o ${OBJECTDIR}/ISR_timer2.o ${OBJECTDIR}/move_worm.o ${OBJECTDIR}/setup_PORTE.o ${OBJECTDIR}/print_ask.o ${OBJECTDIR}/print_board.o ${OBJECTDIR}/print_time.o ${OBJECTDIR}/update_time.o ${OBJECTDIR}/print_worm.o ${OBJECTDIR}/print_Y_X_Char.o ${OBJECTDIR}/verify_read.o ${OBJECTDIR}/vector.o ${OBJECTDIR}/read_time.o ${OBJECTDIR}/setup_timer.o ${OBJECTDIR}/setup_UART.o ${OBJECTDIR}/update_score.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/config.o.d ${OBJECTDIR}/ISR_UART.o.d ${OBJECTDIR}/screen_clear.o.d ${OBJECTDIR}/create_food.o.d ${OBJECTDIR}/create_worm.o.d ${OBJECTDIR}/incr_clk.o.d ${OBJECTDIR}/incr_elapsed.o.d ${OBJECTDIR}/setup_interrupts.o.d ${OBJECTDIR}/ISR_timer1.o.d ${OBJECTDIR}/ISR_timer2.o.d ${OBJECTDIR}/move_worm.o.d ${OBJECTDIR}/setup_PORTE.o.d ${OBJECTDIR}/print_ask.o.d ${OBJECTDIR}/print_board.o.d ${OBJECTDIR}/print_time.o.d ${OBJECTDIR}/update_time.o.d ${OBJECTDIR}/print_worm.o.d ${OBJECTDIR}/print_Y_X_Char.o.d ${OBJECTDIR}/verify_read.o.d ${OBJECTDIR}/vector.o.d ${OBJECTDIR}/read_time.o.d ${OBJECTDIR}/setup_timer.o.d ${OBJECTDIR}/setup_UART.o.d ${OBJECTDIR}/update_score.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/config.o ${OBJECTDIR}/ISR_UART.o ${OBJECTDIR}/screen_clear.o ${OBJECTDIR}/create_food.o ${OBJECTDIR}/create_worm.o ${OBJECTDIR}/incr_clk.o ${OBJECTDIR}/incr_elapsed.o ${OBJECTDIR}/setup_interrupts.o ${OBJECTDIR}/ISR_timer1.o ${OBJECTDIR}/ISR_timer2.o ${OBJECTDIR}/move_worm.o ${OBJECTDIR}/setup_PORTE.o ${OBJECTDIR}/print_ask.o ${OBJECTDIR}/print_board.o ${OBJECTDIR}/print_time.o ${OBJECTDIR}/update_time.o ${OBJECTDIR}/print_worm.o ${OBJECTDIR}/print_Y_X_Char.o ${OBJECTDIR}/verify_read.o ${OBJECTDIR}/vector.o ${OBJECTDIR}/read_time.o ${OBJECTDIR}/setup_timer.o ${OBJECTDIR}/setup_UART.o ${OBJECTDIR}/update_score.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=config.S ISR_UART.S screen_clear.S create_food.S create_worm.S incr_clk.S incr_elapsed.S setup_interrupts.S ISR_timer1.S ISR_timer2.S move_worm.S setup_PORTE.S print_ask.S print_board.S print_time.S update_time.S print_worm.S print_Y_X_Char.S verify_read.S vector.S read_time.S setup_timer.S setup_UART.S update_score.S main.S


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/SNAKE.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX460F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/config.o: config.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/config.o.d 
	@${RM} ${OBJECTDIR}/config.o 
	@${RM} ${OBJECTDIR}/config.o.ok ${OBJECTDIR}/config.o.err 
	@${FIXDEPS} "${OBJECTDIR}/config.o.d" "${OBJECTDIR}/config.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/config.o.d"  -o ${OBJECTDIR}/config.o config.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/config.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/ISR_UART.o: ISR_UART.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_UART.o.d 
	@${RM} ${OBJECTDIR}/ISR_UART.o 
	@${RM} ${OBJECTDIR}/ISR_UART.o.ok ${OBJECTDIR}/ISR_UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_UART.o.d" "${OBJECTDIR}/ISR_UART.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_UART.o.d"  -o ${OBJECTDIR}/ISR_UART.o ISR_UART.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_UART.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/screen_clear.o: screen_clear.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/screen_clear.o.d 
	@${RM} ${OBJECTDIR}/screen_clear.o 
	@${RM} ${OBJECTDIR}/screen_clear.o.ok ${OBJECTDIR}/screen_clear.o.err 
	@${FIXDEPS} "${OBJECTDIR}/screen_clear.o.d" "${OBJECTDIR}/screen_clear.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/screen_clear.o.d"  -o ${OBJECTDIR}/screen_clear.o screen_clear.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/screen_clear.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/create_food.o: create_food.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/create_food.o.d 
	@${RM} ${OBJECTDIR}/create_food.o 
	@${RM} ${OBJECTDIR}/create_food.o.ok ${OBJECTDIR}/create_food.o.err 
	@${FIXDEPS} "${OBJECTDIR}/create_food.o.d" "${OBJECTDIR}/create_food.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/create_food.o.d"  -o ${OBJECTDIR}/create_food.o create_food.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/create_food.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/create_worm.o: create_worm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/create_worm.o.d 
	@${RM} ${OBJECTDIR}/create_worm.o 
	@${RM} ${OBJECTDIR}/create_worm.o.ok ${OBJECTDIR}/create_worm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/create_worm.o.d" "${OBJECTDIR}/create_worm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/create_worm.o.d"  -o ${OBJECTDIR}/create_worm.o create_worm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/create_worm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/incr_clk.o: incr_clk.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/incr_clk.o.d 
	@${RM} ${OBJECTDIR}/incr_clk.o 
	@${RM} ${OBJECTDIR}/incr_clk.o.ok ${OBJECTDIR}/incr_clk.o.err 
	@${FIXDEPS} "${OBJECTDIR}/incr_clk.o.d" "${OBJECTDIR}/incr_clk.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/incr_clk.o.d"  -o ${OBJECTDIR}/incr_clk.o incr_clk.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/incr_clk.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/incr_elapsed.o: incr_elapsed.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/incr_elapsed.o.d 
	@${RM} ${OBJECTDIR}/incr_elapsed.o 
	@${RM} ${OBJECTDIR}/incr_elapsed.o.ok ${OBJECTDIR}/incr_elapsed.o.err 
	@${FIXDEPS} "${OBJECTDIR}/incr_elapsed.o.d" "${OBJECTDIR}/incr_elapsed.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/incr_elapsed.o.d"  -o ${OBJECTDIR}/incr_elapsed.o incr_elapsed.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/incr_elapsed.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/setup_interrupts.o: setup_interrupts.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setup_interrupts.o.d 
	@${RM} ${OBJECTDIR}/setup_interrupts.o 
	@${RM} ${OBJECTDIR}/setup_interrupts.o.ok ${OBJECTDIR}/setup_interrupts.o.err 
	@${FIXDEPS} "${OBJECTDIR}/setup_interrupts.o.d" "${OBJECTDIR}/setup_interrupts.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/setup_interrupts.o.d"  -o ${OBJECTDIR}/setup_interrupts.o setup_interrupts.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/setup_interrupts.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/ISR_timer1.o: ISR_timer1.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_timer1.o.d 
	@${RM} ${OBJECTDIR}/ISR_timer1.o 
	@${RM} ${OBJECTDIR}/ISR_timer1.o.ok ${OBJECTDIR}/ISR_timer1.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_timer1.o.d" "${OBJECTDIR}/ISR_timer1.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_timer1.o.d"  -o ${OBJECTDIR}/ISR_timer1.o ISR_timer1.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_timer1.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/ISR_timer2.o: ISR_timer2.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_timer2.o.d 
	@${RM} ${OBJECTDIR}/ISR_timer2.o 
	@${RM} ${OBJECTDIR}/ISR_timer2.o.ok ${OBJECTDIR}/ISR_timer2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_timer2.o.d" "${OBJECTDIR}/ISR_timer2.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_timer2.o.d"  -o ${OBJECTDIR}/ISR_timer2.o ISR_timer2.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_timer2.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/move_worm.o: move_worm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/move_worm.o.d 
	@${RM} ${OBJECTDIR}/move_worm.o 
	@${RM} ${OBJECTDIR}/move_worm.o.ok ${OBJECTDIR}/move_worm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/move_worm.o.d" "${OBJECTDIR}/move_worm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/move_worm.o.d"  -o ${OBJECTDIR}/move_worm.o move_worm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/move_worm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/setup_PORTE.o: setup_PORTE.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setup_PORTE.o.d 
	@${RM} ${OBJECTDIR}/setup_PORTE.o 
	@${RM} ${OBJECTDIR}/setup_PORTE.o.ok ${OBJECTDIR}/setup_PORTE.o.err 
	@${FIXDEPS} "${OBJECTDIR}/setup_PORTE.o.d" "${OBJECTDIR}/setup_PORTE.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/setup_PORTE.o.d"  -o ${OBJECTDIR}/setup_PORTE.o setup_PORTE.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/setup_PORTE.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/print_ask.o: print_ask.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_ask.o.d 
	@${RM} ${OBJECTDIR}/print_ask.o 
	@${RM} ${OBJECTDIR}/print_ask.o.ok ${OBJECTDIR}/print_ask.o.err 
	@${FIXDEPS} "${OBJECTDIR}/print_ask.o.d" "${OBJECTDIR}/print_ask.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/print_ask.o.d"  -o ${OBJECTDIR}/print_ask.o print_ask.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/print_ask.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/print_board.o: print_board.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_board.o.d 
	@${RM} ${OBJECTDIR}/print_board.o 
	@${RM} ${OBJECTDIR}/print_board.o.ok ${OBJECTDIR}/print_board.o.err 
	@${FIXDEPS} "${OBJECTDIR}/print_board.o.d" "${OBJECTDIR}/print_board.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/print_board.o.d"  -o ${OBJECTDIR}/print_board.o print_board.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/print_board.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/print_time.o: print_time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_time.o.d 
	@${RM} ${OBJECTDIR}/print_time.o 
	@${RM} ${OBJECTDIR}/print_time.o.ok ${OBJECTDIR}/print_time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/print_time.o.d" "${OBJECTDIR}/print_time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/print_time.o.d"  -o ${OBJECTDIR}/print_time.o print_time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/print_time.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/update_time.o: update_time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_time.o.d 
	@${RM} ${OBJECTDIR}/update_time.o 
	@${RM} ${OBJECTDIR}/update_time.o.ok ${OBJECTDIR}/update_time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/update_time.o.d" "${OBJECTDIR}/update_time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/update_time.o.d"  -o ${OBJECTDIR}/update_time.o update_time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/update_time.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/print_worm.o: print_worm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_worm.o.d 
	@${RM} ${OBJECTDIR}/print_worm.o 
	@${RM} ${OBJECTDIR}/print_worm.o.ok ${OBJECTDIR}/print_worm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/print_worm.o.d" "${OBJECTDIR}/print_worm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/print_worm.o.d"  -o ${OBJECTDIR}/print_worm.o print_worm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/print_worm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/print_Y_X_Char.o: print_Y_X_Char.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_Y_X_Char.o.d 
	@${RM} ${OBJECTDIR}/print_Y_X_Char.o 
	@${RM} ${OBJECTDIR}/print_Y_X_Char.o.ok ${OBJECTDIR}/print_Y_X_Char.o.err 
	@${FIXDEPS} "${OBJECTDIR}/print_Y_X_Char.o.d" "${OBJECTDIR}/print_Y_X_Char.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/print_Y_X_Char.o.d"  -o ${OBJECTDIR}/print_Y_X_Char.o print_Y_X_Char.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/print_Y_X_Char.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/verify_read.o: verify_read.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/verify_read.o.d 
	@${RM} ${OBJECTDIR}/verify_read.o 
	@${RM} ${OBJECTDIR}/verify_read.o.ok ${OBJECTDIR}/verify_read.o.err 
	@${FIXDEPS} "${OBJECTDIR}/verify_read.o.d" "${OBJECTDIR}/verify_read.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/verify_read.o.d"  -o ${OBJECTDIR}/verify_read.o verify_read.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/verify_read.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/vector.o: vector.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/vector.o.d 
	@${RM} ${OBJECTDIR}/vector.o 
	@${RM} ${OBJECTDIR}/vector.o.ok ${OBJECTDIR}/vector.o.err 
	@${FIXDEPS} "${OBJECTDIR}/vector.o.d" "${OBJECTDIR}/vector.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/vector.o.d"  -o ${OBJECTDIR}/vector.o vector.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/vector.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/read_time.o: read_time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/read_time.o.d 
	@${RM} ${OBJECTDIR}/read_time.o 
	@${RM} ${OBJECTDIR}/read_time.o.ok ${OBJECTDIR}/read_time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/read_time.o.d" "${OBJECTDIR}/read_time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/read_time.o.d"  -o ${OBJECTDIR}/read_time.o read_time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/read_time.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/setup_timer.o: setup_timer.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setup_timer.o.d 
	@${RM} ${OBJECTDIR}/setup_timer.o 
	@${RM} ${OBJECTDIR}/setup_timer.o.ok ${OBJECTDIR}/setup_timer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/setup_timer.o.d" "${OBJECTDIR}/setup_timer.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/setup_timer.o.d"  -o ${OBJECTDIR}/setup_timer.o setup_timer.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/setup_timer.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/setup_UART.o: setup_UART.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setup_UART.o.d 
	@${RM} ${OBJECTDIR}/setup_UART.o 
	@${RM} ${OBJECTDIR}/setup_UART.o.ok ${OBJECTDIR}/setup_UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/setup_UART.o.d" "${OBJECTDIR}/setup_UART.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/setup_UART.o.d"  -o ${OBJECTDIR}/setup_UART.o setup_UART.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/setup_UART.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/update_score.o: update_score.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_score.o.d 
	@${RM} ${OBJECTDIR}/update_score.o 
	@${RM} ${OBJECTDIR}/update_score.o.ok ${OBJECTDIR}/update_score.o.err 
	@${FIXDEPS} "${OBJECTDIR}/update_score.o.d" "${OBJECTDIR}/update_score.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/update_score.o.d"  -o ${OBJECTDIR}/update_score.o update_score.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/update_score.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/main.o: main.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${RM} ${OBJECTDIR}/main.o.ok ${OBJECTDIR}/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" "${OBJECTDIR}/main.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"  -o ${OBJECTDIR}/main.o main.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/main.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
else
${OBJECTDIR}/config.o: config.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/config.o.d 
	@${RM} ${OBJECTDIR}/config.o 
	@${RM} ${OBJECTDIR}/config.o.ok ${OBJECTDIR}/config.o.err 
	@${FIXDEPS} "${OBJECTDIR}/config.o.d" "${OBJECTDIR}/config.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/config.o.d"  -o ${OBJECTDIR}/config.o config.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/config.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/ISR_UART.o: ISR_UART.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_UART.o.d 
	@${RM} ${OBJECTDIR}/ISR_UART.o 
	@${RM} ${OBJECTDIR}/ISR_UART.o.ok ${OBJECTDIR}/ISR_UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_UART.o.d" "${OBJECTDIR}/ISR_UART.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_UART.o.d"  -o ${OBJECTDIR}/ISR_UART.o ISR_UART.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_UART.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/screen_clear.o: screen_clear.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/screen_clear.o.d 
	@${RM} ${OBJECTDIR}/screen_clear.o 
	@${RM} ${OBJECTDIR}/screen_clear.o.ok ${OBJECTDIR}/screen_clear.o.err 
	@${FIXDEPS} "${OBJECTDIR}/screen_clear.o.d" "${OBJECTDIR}/screen_clear.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/screen_clear.o.d"  -o ${OBJECTDIR}/screen_clear.o screen_clear.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/screen_clear.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/create_food.o: create_food.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/create_food.o.d 
	@${RM} ${OBJECTDIR}/create_food.o 
	@${RM} ${OBJECTDIR}/create_food.o.ok ${OBJECTDIR}/create_food.o.err 
	@${FIXDEPS} "${OBJECTDIR}/create_food.o.d" "${OBJECTDIR}/create_food.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/create_food.o.d"  -o ${OBJECTDIR}/create_food.o create_food.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/create_food.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/create_worm.o: create_worm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/create_worm.o.d 
	@${RM} ${OBJECTDIR}/create_worm.o 
	@${RM} ${OBJECTDIR}/create_worm.o.ok ${OBJECTDIR}/create_worm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/create_worm.o.d" "${OBJECTDIR}/create_worm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/create_worm.o.d"  -o ${OBJECTDIR}/create_worm.o create_worm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/create_worm.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/incr_clk.o: incr_clk.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/incr_clk.o.d 
	@${RM} ${OBJECTDIR}/incr_clk.o 
	@${RM} ${OBJECTDIR}/incr_clk.o.ok ${OBJECTDIR}/incr_clk.o.err 
	@${FIXDEPS} "${OBJECTDIR}/incr_clk.o.d" "${OBJECTDIR}/incr_clk.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/incr_clk.o.d"  -o ${OBJECTDIR}/incr_clk.o incr_clk.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/incr_clk.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/incr_elapsed.o: incr_elapsed.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/incr_elapsed.o.d 
	@${RM} ${OBJECTDIR}/incr_elapsed.o 
	@${RM} ${OBJECTDIR}/incr_elapsed.o.ok ${OBJECTDIR}/incr_elapsed.o.err 
	@${FIXDEPS} "${OBJECTDIR}/incr_elapsed.o.d" "${OBJECTDIR}/incr_elapsed.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/incr_elapsed.o.d"  -o ${OBJECTDIR}/incr_elapsed.o incr_elapsed.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/incr_elapsed.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/setup_interrupts.o: setup_interrupts.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setup_interrupts.o.d 
	@${RM} ${OBJECTDIR}/setup_interrupts.o 
	@${RM} ${OBJECTDIR}/setup_interrupts.o.ok ${OBJECTDIR}/setup_interrupts.o.err 
	@${FIXDEPS} "${OBJECTDIR}/setup_interrupts.o.d" "${OBJECTDIR}/setup_interrupts.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/setup_interrupts.o.d"  -o ${OBJECTDIR}/setup_interrupts.o setup_interrupts.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/setup_interrupts.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/ISR_timer1.o: ISR_timer1.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_timer1.o.d 
	@${RM} ${OBJECTDIR}/ISR_timer1.o 
	@${RM} ${OBJECTDIR}/ISR_timer1.o.ok ${OBJECTDIR}/ISR_timer1.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_timer1.o.d" "${OBJECTDIR}/ISR_timer1.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_timer1.o.d"  -o ${OBJECTDIR}/ISR_timer1.o ISR_timer1.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_timer1.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/ISR_timer2.o: ISR_timer2.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_timer2.o.d 
	@${RM} ${OBJECTDIR}/ISR_timer2.o 
	@${RM} ${OBJECTDIR}/ISR_timer2.o.ok ${OBJECTDIR}/ISR_timer2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_timer2.o.d" "${OBJECTDIR}/ISR_timer2.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_timer2.o.d"  -o ${OBJECTDIR}/ISR_timer2.o ISR_timer2.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_timer2.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/move_worm.o: move_worm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/move_worm.o.d 
	@${RM} ${OBJECTDIR}/move_worm.o 
	@${RM} ${OBJECTDIR}/move_worm.o.ok ${OBJECTDIR}/move_worm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/move_worm.o.d" "${OBJECTDIR}/move_worm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/move_worm.o.d"  -o ${OBJECTDIR}/move_worm.o move_worm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/move_worm.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/setup_PORTE.o: setup_PORTE.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setup_PORTE.o.d 
	@${RM} ${OBJECTDIR}/setup_PORTE.o 
	@${RM} ${OBJECTDIR}/setup_PORTE.o.ok ${OBJECTDIR}/setup_PORTE.o.err 
	@${FIXDEPS} "${OBJECTDIR}/setup_PORTE.o.d" "${OBJECTDIR}/setup_PORTE.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/setup_PORTE.o.d"  -o ${OBJECTDIR}/setup_PORTE.o setup_PORTE.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/setup_PORTE.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/print_ask.o: print_ask.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_ask.o.d 
	@${RM} ${OBJECTDIR}/print_ask.o 
	@${RM} ${OBJECTDIR}/print_ask.o.ok ${OBJECTDIR}/print_ask.o.err 
	@${FIXDEPS} "${OBJECTDIR}/print_ask.o.d" "${OBJECTDIR}/print_ask.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/print_ask.o.d"  -o ${OBJECTDIR}/print_ask.o print_ask.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/print_ask.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/print_board.o: print_board.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_board.o.d 
	@${RM} ${OBJECTDIR}/print_board.o 
	@${RM} ${OBJECTDIR}/print_board.o.ok ${OBJECTDIR}/print_board.o.err 
	@${FIXDEPS} "${OBJECTDIR}/print_board.o.d" "${OBJECTDIR}/print_board.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/print_board.o.d"  -o ${OBJECTDIR}/print_board.o print_board.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/print_board.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/print_time.o: print_time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_time.o.d 
	@${RM} ${OBJECTDIR}/print_time.o 
	@${RM} ${OBJECTDIR}/print_time.o.ok ${OBJECTDIR}/print_time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/print_time.o.d" "${OBJECTDIR}/print_time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/print_time.o.d"  -o ${OBJECTDIR}/print_time.o print_time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/print_time.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/update_time.o: update_time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_time.o.d 
	@${RM} ${OBJECTDIR}/update_time.o 
	@${RM} ${OBJECTDIR}/update_time.o.ok ${OBJECTDIR}/update_time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/update_time.o.d" "${OBJECTDIR}/update_time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/update_time.o.d"  -o ${OBJECTDIR}/update_time.o update_time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/update_time.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/print_worm.o: print_worm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_worm.o.d 
	@${RM} ${OBJECTDIR}/print_worm.o 
	@${RM} ${OBJECTDIR}/print_worm.o.ok ${OBJECTDIR}/print_worm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/print_worm.o.d" "${OBJECTDIR}/print_worm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/print_worm.o.d"  -o ${OBJECTDIR}/print_worm.o print_worm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/print_worm.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/print_Y_X_Char.o: print_Y_X_Char.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_Y_X_Char.o.d 
	@${RM} ${OBJECTDIR}/print_Y_X_Char.o 
	@${RM} ${OBJECTDIR}/print_Y_X_Char.o.ok ${OBJECTDIR}/print_Y_X_Char.o.err 
	@${FIXDEPS} "${OBJECTDIR}/print_Y_X_Char.o.d" "${OBJECTDIR}/print_Y_X_Char.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/print_Y_X_Char.o.d"  -o ${OBJECTDIR}/print_Y_X_Char.o print_Y_X_Char.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/print_Y_X_Char.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/verify_read.o: verify_read.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/verify_read.o.d 
	@${RM} ${OBJECTDIR}/verify_read.o 
	@${RM} ${OBJECTDIR}/verify_read.o.ok ${OBJECTDIR}/verify_read.o.err 
	@${FIXDEPS} "${OBJECTDIR}/verify_read.o.d" "${OBJECTDIR}/verify_read.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/verify_read.o.d"  -o ${OBJECTDIR}/verify_read.o verify_read.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/verify_read.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/vector.o: vector.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/vector.o.d 
	@${RM} ${OBJECTDIR}/vector.o 
	@${RM} ${OBJECTDIR}/vector.o.ok ${OBJECTDIR}/vector.o.err 
	@${FIXDEPS} "${OBJECTDIR}/vector.o.d" "${OBJECTDIR}/vector.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/vector.o.d"  -o ${OBJECTDIR}/vector.o vector.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/vector.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/read_time.o: read_time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/read_time.o.d 
	@${RM} ${OBJECTDIR}/read_time.o 
	@${RM} ${OBJECTDIR}/read_time.o.ok ${OBJECTDIR}/read_time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/read_time.o.d" "${OBJECTDIR}/read_time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/read_time.o.d"  -o ${OBJECTDIR}/read_time.o read_time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/read_time.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/setup_timer.o: setup_timer.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setup_timer.o.d 
	@${RM} ${OBJECTDIR}/setup_timer.o 
	@${RM} ${OBJECTDIR}/setup_timer.o.ok ${OBJECTDIR}/setup_timer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/setup_timer.o.d" "${OBJECTDIR}/setup_timer.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/setup_timer.o.d"  -o ${OBJECTDIR}/setup_timer.o setup_timer.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/setup_timer.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/setup_UART.o: setup_UART.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setup_UART.o.d 
	@${RM} ${OBJECTDIR}/setup_UART.o 
	@${RM} ${OBJECTDIR}/setup_UART.o.ok ${OBJECTDIR}/setup_UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/setup_UART.o.d" "${OBJECTDIR}/setup_UART.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/setup_UART.o.d"  -o ${OBJECTDIR}/setup_UART.o setup_UART.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/setup_UART.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/update_score.o: update_score.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_score.o.d 
	@${RM} ${OBJECTDIR}/update_score.o 
	@${RM} ${OBJECTDIR}/update_score.o.ok ${OBJECTDIR}/update_score.o.err 
	@${FIXDEPS} "${OBJECTDIR}/update_score.o.d" "${OBJECTDIR}/update_score.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/update_score.o.d"  -o ${OBJECTDIR}/update_score.o update_score.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/update_score.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/main.o: main.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${RM} ${OBJECTDIR}/main.o.ok ${OBJECTDIR}/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" "${OBJECTDIR}/main.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"  -o ${OBJECTDIR}/main.o main.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/main.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SNAKE.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/SNAKE.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}           -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SNAKE.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/SNAKE.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/SNAKE.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
