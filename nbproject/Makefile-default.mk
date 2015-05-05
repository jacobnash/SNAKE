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
SOURCEFILES_QUOTED_IF_SPACED=config.S Main.S Clear_Screen.S Read_Time.S Verify_Read.S Print_Time.S Print_Board.S Print_Char_X_Y.S Create_Worm.S Check_Mailbox.S Move_Snake.S Print_Snake.S Update_Time.S Keep_Score.S Timer_Setup.S Interrupts_Setup.S Vector.S ISR_UART.S ISR_Timer1.S Print_Ask_User.S UART_Setup.S Create_Food.S ISR_Timer2.S Increment_Clock_Time.S Increment_Elapsed_Time.S

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/config.o ${OBJECTDIR}/Main.o ${OBJECTDIR}/Clear_Screen.o ${OBJECTDIR}/Read_Time.o ${OBJECTDIR}/Verify_Read.o ${OBJECTDIR}/Print_Time.o ${OBJECTDIR}/Print_Board.o ${OBJECTDIR}/Print_Char_X_Y.o ${OBJECTDIR}/Create_Worm.o ${OBJECTDIR}/Check_Mailbox.o ${OBJECTDIR}/Move_Snake.o ${OBJECTDIR}/Print_Snake.o ${OBJECTDIR}/Update_Time.o ${OBJECTDIR}/Keep_Score.o ${OBJECTDIR}/Timer_Setup.o ${OBJECTDIR}/Interrupts_Setup.o ${OBJECTDIR}/Vector.o ${OBJECTDIR}/ISR_UART.o ${OBJECTDIR}/ISR_Timer1.o ${OBJECTDIR}/Print_Ask_User.o ${OBJECTDIR}/UART_Setup.o ${OBJECTDIR}/Create_Food.o ${OBJECTDIR}/ISR_Timer2.o ${OBJECTDIR}/Increment_Clock_Time.o ${OBJECTDIR}/Increment_Elapsed_Time.o
POSSIBLE_DEPFILES=${OBJECTDIR}/config.o.d ${OBJECTDIR}/Main.o.d ${OBJECTDIR}/Clear_Screen.o.d ${OBJECTDIR}/Read_Time.o.d ${OBJECTDIR}/Verify_Read.o.d ${OBJECTDIR}/Print_Time.o.d ${OBJECTDIR}/Print_Board.o.d ${OBJECTDIR}/Print_Char_X_Y.o.d ${OBJECTDIR}/Create_Worm.o.d ${OBJECTDIR}/Check_Mailbox.o.d ${OBJECTDIR}/Move_Snake.o.d ${OBJECTDIR}/Print_Snake.o.d ${OBJECTDIR}/Update_Time.o.d ${OBJECTDIR}/Keep_Score.o.d ${OBJECTDIR}/Timer_Setup.o.d ${OBJECTDIR}/Interrupts_Setup.o.d ${OBJECTDIR}/Vector.o.d ${OBJECTDIR}/ISR_UART.o.d ${OBJECTDIR}/ISR_Timer1.o.d ${OBJECTDIR}/Print_Ask_User.o.d ${OBJECTDIR}/UART_Setup.o.d ${OBJECTDIR}/Create_Food.o.d ${OBJECTDIR}/ISR_Timer2.o.d ${OBJECTDIR}/Increment_Clock_Time.o.d ${OBJECTDIR}/Increment_Elapsed_Time.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/config.o ${OBJECTDIR}/Main.o ${OBJECTDIR}/Clear_Screen.o ${OBJECTDIR}/Read_Time.o ${OBJECTDIR}/Verify_Read.o ${OBJECTDIR}/Print_Time.o ${OBJECTDIR}/Print_Board.o ${OBJECTDIR}/Print_Char_X_Y.o ${OBJECTDIR}/Create_Worm.o ${OBJECTDIR}/Check_Mailbox.o ${OBJECTDIR}/Move_Snake.o ${OBJECTDIR}/Print_Snake.o ${OBJECTDIR}/Update_Time.o ${OBJECTDIR}/Keep_Score.o ${OBJECTDIR}/Timer_Setup.o ${OBJECTDIR}/Interrupts_Setup.o ${OBJECTDIR}/Vector.o ${OBJECTDIR}/ISR_UART.o ${OBJECTDIR}/ISR_Timer1.o ${OBJECTDIR}/Print_Ask_User.o ${OBJECTDIR}/UART_Setup.o ${OBJECTDIR}/Create_Food.o ${OBJECTDIR}/ISR_Timer2.o ${OBJECTDIR}/Increment_Clock_Time.o ${OBJECTDIR}/Increment_Elapsed_Time.o

# Source Files
SOURCEFILES=config.S Main.S Clear_Screen.S Read_Time.S Verify_Read.S Print_Time.S Print_Board.S Print_Char_X_Y.S Create_Worm.S Check_Mailbox.S Move_Snake.S Print_Snake.S Update_Time.S Keep_Score.S Timer_Setup.S Interrupts_Setup.S Vector.S ISR_UART.S ISR_Timer1.S Print_Ask_User.S UART_Setup.S Create_Food.S ISR_Timer2.S Increment_Clock_Time.S Increment_Elapsed_Time.S


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
	
${OBJECTDIR}/Main.o: Main.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o 
	@${RM} ${OBJECTDIR}/Main.o.ok ${OBJECTDIR}/Main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Main.o.d" "${OBJECTDIR}/Main.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Main.o.d"  -o ${OBJECTDIR}/Main.o Main.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Main.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Clear_Screen.o: Clear_Screen.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Clear_Screen.o.d 
	@${RM} ${OBJECTDIR}/Clear_Screen.o 
	@${RM} ${OBJECTDIR}/Clear_Screen.o.ok ${OBJECTDIR}/Clear_Screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Clear_Screen.o.d" "${OBJECTDIR}/Clear_Screen.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Clear_Screen.o.d"  -o ${OBJECTDIR}/Clear_Screen.o Clear_Screen.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Clear_Screen.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Read_Time.o: Read_Time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Read_Time.o.d 
	@${RM} ${OBJECTDIR}/Read_Time.o 
	@${RM} ${OBJECTDIR}/Read_Time.o.ok ${OBJECTDIR}/Read_Time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Read_Time.o.d" "${OBJECTDIR}/Read_Time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Read_Time.o.d"  -o ${OBJECTDIR}/Read_Time.o Read_Time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Read_Time.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Verify_Read.o: Verify_Read.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Verify_Read.o.d 
	@${RM} ${OBJECTDIR}/Verify_Read.o 
	@${RM} ${OBJECTDIR}/Verify_Read.o.ok ${OBJECTDIR}/Verify_Read.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Verify_Read.o.d" "${OBJECTDIR}/Verify_Read.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Verify_Read.o.d"  -o ${OBJECTDIR}/Verify_Read.o Verify_Read.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Verify_Read.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Print_Time.o: Print_Time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Print_Time.o.d 
	@${RM} ${OBJECTDIR}/Print_Time.o 
	@${RM} ${OBJECTDIR}/Print_Time.o.ok ${OBJECTDIR}/Print_Time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Print_Time.o.d" "${OBJECTDIR}/Print_Time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Print_Time.o.d"  -o ${OBJECTDIR}/Print_Time.o Print_Time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Print_Time.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Print_Board.o: Print_Board.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Print_Board.o.d 
	@${RM} ${OBJECTDIR}/Print_Board.o 
	@${RM} ${OBJECTDIR}/Print_Board.o.ok ${OBJECTDIR}/Print_Board.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Print_Board.o.d" "${OBJECTDIR}/Print_Board.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Print_Board.o.d"  -o ${OBJECTDIR}/Print_Board.o Print_Board.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Print_Board.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Print_Char_X_Y.o: Print_Char_X_Y.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Print_Char_X_Y.o.d 
	@${RM} ${OBJECTDIR}/Print_Char_X_Y.o 
	@${RM} ${OBJECTDIR}/Print_Char_X_Y.o.ok ${OBJECTDIR}/Print_Char_X_Y.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Print_Char_X_Y.o.d" "${OBJECTDIR}/Print_Char_X_Y.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Print_Char_X_Y.o.d"  -o ${OBJECTDIR}/Print_Char_X_Y.o Print_Char_X_Y.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Print_Char_X_Y.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Create_Worm.o: Create_Worm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Create_Worm.o.d 
	@${RM} ${OBJECTDIR}/Create_Worm.o 
	@${RM} ${OBJECTDIR}/Create_Worm.o.ok ${OBJECTDIR}/Create_Worm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Create_Worm.o.d" "${OBJECTDIR}/Create_Worm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Create_Worm.o.d"  -o ${OBJECTDIR}/Create_Worm.o Create_Worm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Create_Worm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Check_Mailbox.o: Check_Mailbox.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Check_Mailbox.o.d 
	@${RM} ${OBJECTDIR}/Check_Mailbox.o 
	@${RM} ${OBJECTDIR}/Check_Mailbox.o.ok ${OBJECTDIR}/Check_Mailbox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Check_Mailbox.o.d" "${OBJECTDIR}/Check_Mailbox.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Check_Mailbox.o.d"  -o ${OBJECTDIR}/Check_Mailbox.o Check_Mailbox.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Check_Mailbox.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Move_Snake.o: Move_Snake.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Move_Snake.o.d 
	@${RM} ${OBJECTDIR}/Move_Snake.o 
	@${RM} ${OBJECTDIR}/Move_Snake.o.ok ${OBJECTDIR}/Move_Snake.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Move_Snake.o.d" "${OBJECTDIR}/Move_Snake.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Move_Snake.o.d"  -o ${OBJECTDIR}/Move_Snake.o Move_Snake.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Move_Snake.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Print_Snake.o: Print_Snake.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Print_Snake.o.d 
	@${RM} ${OBJECTDIR}/Print_Snake.o 
	@${RM} ${OBJECTDIR}/Print_Snake.o.ok ${OBJECTDIR}/Print_Snake.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Print_Snake.o.d" "${OBJECTDIR}/Print_Snake.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Print_Snake.o.d"  -o ${OBJECTDIR}/Print_Snake.o Print_Snake.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Print_Snake.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Update_Time.o: Update_Time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Update_Time.o.d 
	@${RM} ${OBJECTDIR}/Update_Time.o 
	@${RM} ${OBJECTDIR}/Update_Time.o.ok ${OBJECTDIR}/Update_Time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Update_Time.o.d" "${OBJECTDIR}/Update_Time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Update_Time.o.d"  -o ${OBJECTDIR}/Update_Time.o Update_Time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Update_Time.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Keep_Score.o: Keep_Score.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Keep_Score.o.d 
	@${RM} ${OBJECTDIR}/Keep_Score.o 
	@${RM} ${OBJECTDIR}/Keep_Score.o.ok ${OBJECTDIR}/Keep_Score.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Keep_Score.o.d" "${OBJECTDIR}/Keep_Score.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Keep_Score.o.d"  -o ${OBJECTDIR}/Keep_Score.o Keep_Score.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Keep_Score.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Timer_Setup.o: Timer_Setup.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer_Setup.o.d 
	@${RM} ${OBJECTDIR}/Timer_Setup.o 
	@${RM} ${OBJECTDIR}/Timer_Setup.o.ok ${OBJECTDIR}/Timer_Setup.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Timer_Setup.o.d" "${OBJECTDIR}/Timer_Setup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Timer_Setup.o.d"  -o ${OBJECTDIR}/Timer_Setup.o Timer_Setup.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Timer_Setup.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Interrupts_Setup.o: Interrupts_Setup.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Interrupts_Setup.o.d 
	@${RM} ${OBJECTDIR}/Interrupts_Setup.o 
	@${RM} ${OBJECTDIR}/Interrupts_Setup.o.ok ${OBJECTDIR}/Interrupts_Setup.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Interrupts_Setup.o.d" "${OBJECTDIR}/Interrupts_Setup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Interrupts_Setup.o.d"  -o ${OBJECTDIR}/Interrupts_Setup.o Interrupts_Setup.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Interrupts_Setup.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Vector.o: Vector.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Vector.o.d 
	@${RM} ${OBJECTDIR}/Vector.o 
	@${RM} ${OBJECTDIR}/Vector.o.ok ${OBJECTDIR}/Vector.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Vector.o.d" "${OBJECTDIR}/Vector.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Vector.o.d"  -o ${OBJECTDIR}/Vector.o Vector.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Vector.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/ISR_UART.o: ISR_UART.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_UART.o.d 
	@${RM} ${OBJECTDIR}/ISR_UART.o 
	@${RM} ${OBJECTDIR}/ISR_UART.o.ok ${OBJECTDIR}/ISR_UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_UART.o.d" "${OBJECTDIR}/ISR_UART.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_UART.o.d"  -o ${OBJECTDIR}/ISR_UART.o ISR_UART.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_UART.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/ISR_Timer1.o: ISR_Timer1.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_Timer1.o.d 
	@${RM} ${OBJECTDIR}/ISR_Timer1.o 
	@${RM} ${OBJECTDIR}/ISR_Timer1.o.ok ${OBJECTDIR}/ISR_Timer1.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_Timer1.o.d" "${OBJECTDIR}/ISR_Timer1.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_Timer1.o.d"  -o ${OBJECTDIR}/ISR_Timer1.o ISR_Timer1.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_Timer1.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Print_Ask_User.o: Print_Ask_User.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Print_Ask_User.o.d 
	@${RM} ${OBJECTDIR}/Print_Ask_User.o 
	@${RM} ${OBJECTDIR}/Print_Ask_User.o.ok ${OBJECTDIR}/Print_Ask_User.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Print_Ask_User.o.d" "${OBJECTDIR}/Print_Ask_User.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Print_Ask_User.o.d"  -o ${OBJECTDIR}/Print_Ask_User.o Print_Ask_User.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Print_Ask_User.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/UART_Setup.o: UART_Setup.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART_Setup.o.d 
	@${RM} ${OBJECTDIR}/UART_Setup.o 
	@${RM} ${OBJECTDIR}/UART_Setup.o.ok ${OBJECTDIR}/UART_Setup.o.err 
	@${FIXDEPS} "${OBJECTDIR}/UART_Setup.o.d" "${OBJECTDIR}/UART_Setup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/UART_Setup.o.d"  -o ${OBJECTDIR}/UART_Setup.o UART_Setup.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/UART_Setup.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Create_Food.o: Create_Food.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Create_Food.o.d 
	@${RM} ${OBJECTDIR}/Create_Food.o 
	@${RM} ${OBJECTDIR}/Create_Food.o.ok ${OBJECTDIR}/Create_Food.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Create_Food.o.d" "${OBJECTDIR}/Create_Food.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Create_Food.o.d"  -o ${OBJECTDIR}/Create_Food.o Create_Food.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Create_Food.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/ISR_Timer2.o: ISR_Timer2.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_Timer2.o.d 
	@${RM} ${OBJECTDIR}/ISR_Timer2.o 
	@${RM} ${OBJECTDIR}/ISR_Timer2.o.ok ${OBJECTDIR}/ISR_Timer2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_Timer2.o.d" "${OBJECTDIR}/ISR_Timer2.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_Timer2.o.d"  -o ${OBJECTDIR}/ISR_Timer2.o ISR_Timer2.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_Timer2.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Increment_Clock_Time.o: Increment_Clock_Time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Increment_Clock_Time.o.d 
	@${RM} ${OBJECTDIR}/Increment_Clock_Time.o 
	@${RM} ${OBJECTDIR}/Increment_Clock_Time.o.ok ${OBJECTDIR}/Increment_Clock_Time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Increment_Clock_Time.o.d" "${OBJECTDIR}/Increment_Clock_Time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Increment_Clock_Time.o.d"  -o ${OBJECTDIR}/Increment_Clock_Time.o Increment_Clock_Time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Increment_Clock_Time.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/Increment_Elapsed_Time.o: Increment_Elapsed_Time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Increment_Elapsed_Time.o.d 
	@${RM} ${OBJECTDIR}/Increment_Elapsed_Time.o 
	@${RM} ${OBJECTDIR}/Increment_Elapsed_Time.o.ok ${OBJECTDIR}/Increment_Elapsed_Time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Increment_Elapsed_Time.o.d" "${OBJECTDIR}/Increment_Elapsed_Time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Increment_Elapsed_Time.o.d"  -o ${OBJECTDIR}/Increment_Elapsed_Time.o Increment_Elapsed_Time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Increment_Elapsed_Time.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
else
${OBJECTDIR}/config.o: config.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/config.o.d 
	@${RM} ${OBJECTDIR}/config.o 
	@${RM} ${OBJECTDIR}/config.o.ok ${OBJECTDIR}/config.o.err 
	@${FIXDEPS} "${OBJECTDIR}/config.o.d" "${OBJECTDIR}/config.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/config.o.d"  -o ${OBJECTDIR}/config.o config.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/config.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Main.o: Main.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o 
	@${RM} ${OBJECTDIR}/Main.o.ok ${OBJECTDIR}/Main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Main.o.d" "${OBJECTDIR}/Main.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Main.o.d"  -o ${OBJECTDIR}/Main.o Main.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Main.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Clear_Screen.o: Clear_Screen.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Clear_Screen.o.d 
	@${RM} ${OBJECTDIR}/Clear_Screen.o 
	@${RM} ${OBJECTDIR}/Clear_Screen.o.ok ${OBJECTDIR}/Clear_Screen.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Clear_Screen.o.d" "${OBJECTDIR}/Clear_Screen.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Clear_Screen.o.d"  -o ${OBJECTDIR}/Clear_Screen.o Clear_Screen.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Clear_Screen.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Read_Time.o: Read_Time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Read_Time.o.d 
	@${RM} ${OBJECTDIR}/Read_Time.o 
	@${RM} ${OBJECTDIR}/Read_Time.o.ok ${OBJECTDIR}/Read_Time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Read_Time.o.d" "${OBJECTDIR}/Read_Time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Read_Time.o.d"  -o ${OBJECTDIR}/Read_Time.o Read_Time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Read_Time.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Verify_Read.o: Verify_Read.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Verify_Read.o.d 
	@${RM} ${OBJECTDIR}/Verify_Read.o 
	@${RM} ${OBJECTDIR}/Verify_Read.o.ok ${OBJECTDIR}/Verify_Read.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Verify_Read.o.d" "${OBJECTDIR}/Verify_Read.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Verify_Read.o.d"  -o ${OBJECTDIR}/Verify_Read.o Verify_Read.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Verify_Read.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Print_Time.o: Print_Time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Print_Time.o.d 
	@${RM} ${OBJECTDIR}/Print_Time.o 
	@${RM} ${OBJECTDIR}/Print_Time.o.ok ${OBJECTDIR}/Print_Time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Print_Time.o.d" "${OBJECTDIR}/Print_Time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Print_Time.o.d"  -o ${OBJECTDIR}/Print_Time.o Print_Time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Print_Time.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Print_Board.o: Print_Board.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Print_Board.o.d 
	@${RM} ${OBJECTDIR}/Print_Board.o 
	@${RM} ${OBJECTDIR}/Print_Board.o.ok ${OBJECTDIR}/Print_Board.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Print_Board.o.d" "${OBJECTDIR}/Print_Board.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Print_Board.o.d"  -o ${OBJECTDIR}/Print_Board.o Print_Board.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Print_Board.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Print_Char_X_Y.o: Print_Char_X_Y.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Print_Char_X_Y.o.d 
	@${RM} ${OBJECTDIR}/Print_Char_X_Y.o 
	@${RM} ${OBJECTDIR}/Print_Char_X_Y.o.ok ${OBJECTDIR}/Print_Char_X_Y.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Print_Char_X_Y.o.d" "${OBJECTDIR}/Print_Char_X_Y.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Print_Char_X_Y.o.d"  -o ${OBJECTDIR}/Print_Char_X_Y.o Print_Char_X_Y.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Print_Char_X_Y.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Create_Worm.o: Create_Worm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Create_Worm.o.d 
	@${RM} ${OBJECTDIR}/Create_Worm.o 
	@${RM} ${OBJECTDIR}/Create_Worm.o.ok ${OBJECTDIR}/Create_Worm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Create_Worm.o.d" "${OBJECTDIR}/Create_Worm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Create_Worm.o.d"  -o ${OBJECTDIR}/Create_Worm.o Create_Worm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Create_Worm.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Check_Mailbox.o: Check_Mailbox.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Check_Mailbox.o.d 
	@${RM} ${OBJECTDIR}/Check_Mailbox.o 
	@${RM} ${OBJECTDIR}/Check_Mailbox.o.ok ${OBJECTDIR}/Check_Mailbox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Check_Mailbox.o.d" "${OBJECTDIR}/Check_Mailbox.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Check_Mailbox.o.d"  -o ${OBJECTDIR}/Check_Mailbox.o Check_Mailbox.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Check_Mailbox.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Move_Snake.o: Move_Snake.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Move_Snake.o.d 
	@${RM} ${OBJECTDIR}/Move_Snake.o 
	@${RM} ${OBJECTDIR}/Move_Snake.o.ok ${OBJECTDIR}/Move_Snake.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Move_Snake.o.d" "${OBJECTDIR}/Move_Snake.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Move_Snake.o.d"  -o ${OBJECTDIR}/Move_Snake.o Move_Snake.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Move_Snake.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Print_Snake.o: Print_Snake.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Print_Snake.o.d 
	@${RM} ${OBJECTDIR}/Print_Snake.o 
	@${RM} ${OBJECTDIR}/Print_Snake.o.ok ${OBJECTDIR}/Print_Snake.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Print_Snake.o.d" "${OBJECTDIR}/Print_Snake.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Print_Snake.o.d"  -o ${OBJECTDIR}/Print_Snake.o Print_Snake.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Print_Snake.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Update_Time.o: Update_Time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Update_Time.o.d 
	@${RM} ${OBJECTDIR}/Update_Time.o 
	@${RM} ${OBJECTDIR}/Update_Time.o.ok ${OBJECTDIR}/Update_Time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Update_Time.o.d" "${OBJECTDIR}/Update_Time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Update_Time.o.d"  -o ${OBJECTDIR}/Update_Time.o Update_Time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Update_Time.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Keep_Score.o: Keep_Score.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Keep_Score.o.d 
	@${RM} ${OBJECTDIR}/Keep_Score.o 
	@${RM} ${OBJECTDIR}/Keep_Score.o.ok ${OBJECTDIR}/Keep_Score.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Keep_Score.o.d" "${OBJECTDIR}/Keep_Score.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Keep_Score.o.d"  -o ${OBJECTDIR}/Keep_Score.o Keep_Score.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Keep_Score.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Timer_Setup.o: Timer_Setup.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer_Setup.o.d 
	@${RM} ${OBJECTDIR}/Timer_Setup.o 
	@${RM} ${OBJECTDIR}/Timer_Setup.o.ok ${OBJECTDIR}/Timer_Setup.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Timer_Setup.o.d" "${OBJECTDIR}/Timer_Setup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Timer_Setup.o.d"  -o ${OBJECTDIR}/Timer_Setup.o Timer_Setup.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Timer_Setup.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Interrupts_Setup.o: Interrupts_Setup.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Interrupts_Setup.o.d 
	@${RM} ${OBJECTDIR}/Interrupts_Setup.o 
	@${RM} ${OBJECTDIR}/Interrupts_Setup.o.ok ${OBJECTDIR}/Interrupts_Setup.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Interrupts_Setup.o.d" "${OBJECTDIR}/Interrupts_Setup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Interrupts_Setup.o.d"  -o ${OBJECTDIR}/Interrupts_Setup.o Interrupts_Setup.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Interrupts_Setup.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Vector.o: Vector.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Vector.o.d 
	@${RM} ${OBJECTDIR}/Vector.o 
	@${RM} ${OBJECTDIR}/Vector.o.ok ${OBJECTDIR}/Vector.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Vector.o.d" "${OBJECTDIR}/Vector.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Vector.o.d"  -o ${OBJECTDIR}/Vector.o Vector.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Vector.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/ISR_UART.o: ISR_UART.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_UART.o.d 
	@${RM} ${OBJECTDIR}/ISR_UART.o 
	@${RM} ${OBJECTDIR}/ISR_UART.o.ok ${OBJECTDIR}/ISR_UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_UART.o.d" "${OBJECTDIR}/ISR_UART.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_UART.o.d"  -o ${OBJECTDIR}/ISR_UART.o ISR_UART.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_UART.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/ISR_Timer1.o: ISR_Timer1.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_Timer1.o.d 
	@${RM} ${OBJECTDIR}/ISR_Timer1.o 
	@${RM} ${OBJECTDIR}/ISR_Timer1.o.ok ${OBJECTDIR}/ISR_Timer1.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_Timer1.o.d" "${OBJECTDIR}/ISR_Timer1.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_Timer1.o.d"  -o ${OBJECTDIR}/ISR_Timer1.o ISR_Timer1.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_Timer1.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Print_Ask_User.o: Print_Ask_User.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Print_Ask_User.o.d 
	@${RM} ${OBJECTDIR}/Print_Ask_User.o 
	@${RM} ${OBJECTDIR}/Print_Ask_User.o.ok ${OBJECTDIR}/Print_Ask_User.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Print_Ask_User.o.d" "${OBJECTDIR}/Print_Ask_User.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Print_Ask_User.o.d"  -o ${OBJECTDIR}/Print_Ask_User.o Print_Ask_User.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Print_Ask_User.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/UART_Setup.o: UART_Setup.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART_Setup.o.d 
	@${RM} ${OBJECTDIR}/UART_Setup.o 
	@${RM} ${OBJECTDIR}/UART_Setup.o.ok ${OBJECTDIR}/UART_Setup.o.err 
	@${FIXDEPS} "${OBJECTDIR}/UART_Setup.o.d" "${OBJECTDIR}/UART_Setup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/UART_Setup.o.d"  -o ${OBJECTDIR}/UART_Setup.o UART_Setup.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/UART_Setup.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Create_Food.o: Create_Food.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Create_Food.o.d 
	@${RM} ${OBJECTDIR}/Create_Food.o 
	@${RM} ${OBJECTDIR}/Create_Food.o.ok ${OBJECTDIR}/Create_Food.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Create_Food.o.d" "${OBJECTDIR}/Create_Food.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Create_Food.o.d"  -o ${OBJECTDIR}/Create_Food.o Create_Food.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Create_Food.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/ISR_Timer2.o: ISR_Timer2.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ISR_Timer2.o.d 
	@${RM} ${OBJECTDIR}/ISR_Timer2.o 
	@${RM} ${OBJECTDIR}/ISR_Timer2.o.ok ${OBJECTDIR}/ISR_Timer2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ISR_Timer2.o.d" "${OBJECTDIR}/ISR_Timer2.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ISR_Timer2.o.d"  -o ${OBJECTDIR}/ISR_Timer2.o ISR_Timer2.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/ISR_Timer2.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Increment_Clock_Time.o: Increment_Clock_Time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Increment_Clock_Time.o.d 
	@${RM} ${OBJECTDIR}/Increment_Clock_Time.o 
	@${RM} ${OBJECTDIR}/Increment_Clock_Time.o.ok ${OBJECTDIR}/Increment_Clock_Time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Increment_Clock_Time.o.d" "${OBJECTDIR}/Increment_Clock_Time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Increment_Clock_Time.o.d"  -o ${OBJECTDIR}/Increment_Clock_Time.o Increment_Clock_Time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Increment_Clock_Time.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/Increment_Elapsed_Time.o: Increment_Elapsed_Time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Increment_Elapsed_Time.o.d 
	@${RM} ${OBJECTDIR}/Increment_Elapsed_Time.o 
	@${RM} ${OBJECTDIR}/Increment_Elapsed_Time.o.ok ${OBJECTDIR}/Increment_Elapsed_Time.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Increment_Elapsed_Time.o.d" "${OBJECTDIR}/Increment_Elapsed_Time.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Increment_Elapsed_Time.o.d"  -o ${OBJECTDIR}/Increment_Elapsed_Time.o Increment_Elapsed_Time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Increment_Elapsed_Time.o.asm.d",--gdwarf-2
	
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
