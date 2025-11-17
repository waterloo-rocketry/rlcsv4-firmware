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
FINAL_IMAGE=${DISTDIR}/relay_board.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/relay_board.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/system/src/system.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/clock.c main.c ../third_party/canlib/message/msg_actuator.c ../third_party/canlib/message/msg_common.c ../third_party/canlib/message/msg_general.c ../third_party/canlib/message/msg_gps.c ../third_party/canlib/message/msg_recovery.c ../third_party/canlib/message/msg_sensor.c ../third_party/canlib/message/msg_state_est.c ../third_party/canlib/message/msg_stream.c ../third_party/canlib/pic18f26k83/pic18f26k83_can.c ../third_party/canlib/util/can_rcv_buffer.c ../third_party/canlib/util/can_tx_buffer.c ../third_party/canlib/util/safe_ring_buffer.c ../third_party/canlib/util/timing_util.c ../third_party/rocketlib/pic18f26k83/i2c.c ../third_party/rocketlib/pic18f26k83/timer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/_ext/269170563/msg_actuator.p1 ${OBJECTDIR}/_ext/269170563/msg_common.p1 ${OBJECTDIR}/_ext/269170563/msg_general.p1 ${OBJECTDIR}/_ext/269170563/msg_gps.p1 ${OBJECTDIR}/_ext/269170563/msg_recovery.p1 ${OBJECTDIR}/_ext/269170563/msg_sensor.p1 ${OBJECTDIR}/_ext/269170563/msg_state_est.p1 ${OBJECTDIR}/_ext/269170563/msg_stream.p1 ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1 ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1 ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1 ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1 ${OBJECTDIR}/_ext/2050430132/timing_util.p1 ${OBJECTDIR}/_ext/952103937/i2c.p1 ${OBJECTDIR}/_ext/952103937/timer.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/_ext/269170563/msg_actuator.p1.d ${OBJECTDIR}/_ext/269170563/msg_common.p1.d ${OBJECTDIR}/_ext/269170563/msg_general.p1.d ${OBJECTDIR}/_ext/269170563/msg_gps.p1.d ${OBJECTDIR}/_ext/269170563/msg_recovery.p1.d ${OBJECTDIR}/_ext/269170563/msg_sensor.p1.d ${OBJECTDIR}/_ext/269170563/msg_state_est.p1.d ${OBJECTDIR}/_ext/269170563/msg_stream.p1.d ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1.d ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1.d ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1.d ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1.d ${OBJECTDIR}/_ext/2050430132/timing_util.p1.d ${OBJECTDIR}/_ext/952103937/i2c.p1.d ${OBJECTDIR}/_ext/952103937/timer.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/_ext/269170563/msg_actuator.p1 ${OBJECTDIR}/_ext/269170563/msg_common.p1 ${OBJECTDIR}/_ext/269170563/msg_general.p1 ${OBJECTDIR}/_ext/269170563/msg_gps.p1 ${OBJECTDIR}/_ext/269170563/msg_recovery.p1 ${OBJECTDIR}/_ext/269170563/msg_sensor.p1 ${OBJECTDIR}/_ext/269170563/msg_state_est.p1 ${OBJECTDIR}/_ext/269170563/msg_stream.p1 ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1 ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1 ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1 ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1 ${OBJECTDIR}/_ext/2050430132/timing_util.p1 ${OBJECTDIR}/_ext/952103937/i2c.p1 ${OBJECTDIR}/_ext/952103937/timer.p1

# Source Files
SOURCEFILES=mcc_generated_files/system/src/system.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/clock.c main.c ../third_party/canlib/message/msg_actuator.c ../third_party/canlib/message/msg_common.c ../third_party/canlib/message/msg_general.c ../third_party/canlib/message/msg_gps.c ../third_party/canlib/message/msg_recovery.c ../third_party/canlib/message/msg_sensor.c ../third_party/canlib/message/msg_state_est.c ../third_party/canlib/message/msg_stream.c ../third_party/canlib/pic18f26k83/pic18f26k83_can.c ../third_party/canlib/util/can_rcv_buffer.c ../third_party/canlib/util/can_tx_buffer.c ../third_party/canlib/util/safe_ring_buffer.c ../third_party/canlib/util/timing_util.c ../third_party/rocketlib/pic18f26k83/i2c.c ../third_party/rocketlib/pic18f26k83/timer.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/relay_board.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F26K83
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/system.p1: mcc_generated_files/system/src/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 mcc_generated_files/system/src/system.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/system.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.p1: mcc_generated_files/system/src/pins.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 mcc_generated_files/system/src/pins.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/pins.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1: mcc_generated_files/system/src/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 mcc_generated_files/system/src/interrupt.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1: mcc_generated_files/system/src/config_bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 mcc_generated_files/system/src/config_bits.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.p1: mcc_generated_files/system/src/clock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 mcc_generated_files/system/src/clock.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/clock.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_actuator.p1: ../third_party/canlib/message/msg_actuator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_actuator.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_actuator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_actuator.p1 ../third_party/canlib/message/msg_actuator.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_actuator.d ${OBJECTDIR}/_ext/269170563/msg_actuator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_actuator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_common.p1: ../third_party/canlib/message/msg_common.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_common.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_common.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_common.p1 ../third_party/canlib/message/msg_common.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_common.d ${OBJECTDIR}/_ext/269170563/msg_common.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_common.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_general.p1: ../third_party/canlib/message/msg_general.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_general.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_general.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_general.p1 ../third_party/canlib/message/msg_general.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_general.d ${OBJECTDIR}/_ext/269170563/msg_general.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_general.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_gps.p1: ../third_party/canlib/message/msg_gps.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_gps.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_gps.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_gps.p1 ../third_party/canlib/message/msg_gps.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_gps.d ${OBJECTDIR}/_ext/269170563/msg_gps.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_gps.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_recovery.p1: ../third_party/canlib/message/msg_recovery.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_recovery.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_recovery.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_recovery.p1 ../third_party/canlib/message/msg_recovery.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_recovery.d ${OBJECTDIR}/_ext/269170563/msg_recovery.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_recovery.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_sensor.p1: ../third_party/canlib/message/msg_sensor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_sensor.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_sensor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_sensor.p1 ../third_party/canlib/message/msg_sensor.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_sensor.d ${OBJECTDIR}/_ext/269170563/msg_sensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_sensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_state_est.p1: ../third_party/canlib/message/msg_state_est.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_state_est.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_state_est.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_state_est.p1 ../third_party/canlib/message/msg_state_est.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_state_est.d ${OBJECTDIR}/_ext/269170563/msg_state_est.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_state_est.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_stream.p1: ../third_party/canlib/message/msg_stream.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_stream.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_stream.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_stream.p1 ../third_party/canlib/message/msg_stream.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_stream.d ${OBJECTDIR}/_ext/269170563/msg_stream.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_stream.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1: ../third_party/canlib/pic18f26k83/pic18f26k83_can.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/446120669" 
	@${RM} ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1.d 
	@${RM} ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1 ../third_party/canlib/pic18f26k83/pic18f26k83_can.c 
	@-${MV} ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.d ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1: ../third_party/canlib/util/can_rcv_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2050430132" 
	@${RM} ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1 ../third_party/canlib/util/can_rcv_buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.d ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1: ../third_party/canlib/util/can_tx_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2050430132" 
	@${RM} ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1 ../third_party/canlib/util/can_tx_buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.d ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1: ../third_party/canlib/util/safe_ring_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2050430132" 
	@${RM} ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1 ../third_party/canlib/util/safe_ring_buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.d ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2050430132/timing_util.p1: ../third_party/canlib/util/timing_util.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2050430132" 
	@${RM} ${OBJECTDIR}/_ext/2050430132/timing_util.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2050430132/timing_util.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2050430132/timing_util.p1 ../third_party/canlib/util/timing_util.c 
	@-${MV} ${OBJECTDIR}/_ext/2050430132/timing_util.d ${OBJECTDIR}/_ext/2050430132/timing_util.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2050430132/timing_util.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/952103937/i2c.p1: ../third_party/rocketlib/pic18f26k83/i2c.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/952103937" 
	@${RM} ${OBJECTDIR}/_ext/952103937/i2c.p1.d 
	@${RM} ${OBJECTDIR}/_ext/952103937/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/952103937/i2c.p1 ../third_party/rocketlib/pic18f26k83/i2c.c 
	@-${MV} ${OBJECTDIR}/_ext/952103937/i2c.d ${OBJECTDIR}/_ext/952103937/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/952103937/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/952103937/timer.p1: ../third_party/rocketlib/pic18f26k83/timer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/952103937" 
	@${RM} ${OBJECTDIR}/_ext/952103937/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/952103937/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/952103937/timer.p1 ../third_party/rocketlib/pic18f26k83/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/952103937/timer.d ${OBJECTDIR}/_ext/952103937/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/952103937/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/mcc_generated_files/system/src/system.p1: mcc_generated_files/system/src/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 mcc_generated_files/system/src/system.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/system.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.p1: mcc_generated_files/system/src/pins.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 mcc_generated_files/system/src/pins.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/pins.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1: mcc_generated_files/system/src/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 mcc_generated_files/system/src/interrupt.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1: mcc_generated_files/system/src/config_bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 mcc_generated_files/system/src/config_bits.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.p1: mcc_generated_files/system/src/clock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 mcc_generated_files/system/src/clock.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/clock.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_actuator.p1: ../third_party/canlib/message/msg_actuator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_actuator.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_actuator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_actuator.p1 ../third_party/canlib/message/msg_actuator.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_actuator.d ${OBJECTDIR}/_ext/269170563/msg_actuator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_actuator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_common.p1: ../third_party/canlib/message/msg_common.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_common.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_common.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_common.p1 ../third_party/canlib/message/msg_common.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_common.d ${OBJECTDIR}/_ext/269170563/msg_common.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_common.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_general.p1: ../third_party/canlib/message/msg_general.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_general.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_general.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_general.p1 ../third_party/canlib/message/msg_general.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_general.d ${OBJECTDIR}/_ext/269170563/msg_general.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_general.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_gps.p1: ../third_party/canlib/message/msg_gps.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_gps.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_gps.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_gps.p1 ../third_party/canlib/message/msg_gps.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_gps.d ${OBJECTDIR}/_ext/269170563/msg_gps.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_gps.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_recovery.p1: ../third_party/canlib/message/msg_recovery.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_recovery.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_recovery.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_recovery.p1 ../third_party/canlib/message/msg_recovery.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_recovery.d ${OBJECTDIR}/_ext/269170563/msg_recovery.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_recovery.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_sensor.p1: ../third_party/canlib/message/msg_sensor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_sensor.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_sensor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_sensor.p1 ../third_party/canlib/message/msg_sensor.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_sensor.d ${OBJECTDIR}/_ext/269170563/msg_sensor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_sensor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_state_est.p1: ../third_party/canlib/message/msg_state_est.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_state_est.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_state_est.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_state_est.p1 ../third_party/canlib/message/msg_state_est.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_state_est.d ${OBJECTDIR}/_ext/269170563/msg_state_est.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_state_est.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/269170563/msg_stream.p1: ../third_party/canlib/message/msg_stream.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/269170563" 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_stream.p1.d 
	@${RM} ${OBJECTDIR}/_ext/269170563/msg_stream.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/269170563/msg_stream.p1 ../third_party/canlib/message/msg_stream.c 
	@-${MV} ${OBJECTDIR}/_ext/269170563/msg_stream.d ${OBJECTDIR}/_ext/269170563/msg_stream.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/269170563/msg_stream.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1: ../third_party/canlib/pic18f26k83/pic18f26k83_can.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/446120669" 
	@${RM} ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1.d 
	@${RM} ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1 ../third_party/canlib/pic18f26k83/pic18f26k83_can.c 
	@-${MV} ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.d ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/446120669/pic18f26k83_can.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1: ../third_party/canlib/util/can_rcv_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2050430132" 
	@${RM} ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1 ../third_party/canlib/util/can_rcv_buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.d ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2050430132/can_rcv_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1: ../third_party/canlib/util/can_tx_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2050430132" 
	@${RM} ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1 ../third_party/canlib/util/can_tx_buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.d ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2050430132/can_tx_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1: ../third_party/canlib/util/safe_ring_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2050430132" 
	@${RM} ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1 ../third_party/canlib/util/safe_ring_buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.d ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2050430132/safe_ring_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2050430132/timing_util.p1: ../third_party/canlib/util/timing_util.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2050430132" 
	@${RM} ${OBJECTDIR}/_ext/2050430132/timing_util.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2050430132/timing_util.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2050430132/timing_util.p1 ../third_party/canlib/util/timing_util.c 
	@-${MV} ${OBJECTDIR}/_ext/2050430132/timing_util.d ${OBJECTDIR}/_ext/2050430132/timing_util.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2050430132/timing_util.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/952103937/i2c.p1: ../third_party/rocketlib/pic18f26k83/i2c.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/952103937" 
	@${RM} ${OBJECTDIR}/_ext/952103937/i2c.p1.d 
	@${RM} ${OBJECTDIR}/_ext/952103937/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/952103937/i2c.p1 ../third_party/rocketlib/pic18f26k83/i2c.c 
	@-${MV} ${OBJECTDIR}/_ext/952103937/i2c.d ${OBJECTDIR}/_ext/952103937/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/952103937/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/952103937/timer.p1: ../third_party/rocketlib/pic18f26k83/timer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/952103937" 
	@${RM} ${OBJECTDIR}/_ext/952103937/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/952103937/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/952103937/timer.p1 ../third_party/rocketlib/pic18f26k83/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/952103937/timer.d ${OBJECTDIR}/_ext/952103937/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/952103937/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/relay_board.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/relay_board.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/relay_board.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/relay_board.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/relay_board.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/relay_board.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY -DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND -xassembler-with-cpp -I"../third_party/canlib" -I"../third_party/rocketlib/include" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/relay_board.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
