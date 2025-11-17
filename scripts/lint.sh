#!/bin/sh
set -x
${CLANG_TIDY:-clang-tidy} relay_board/mcp23008.c relay_board/mcp23008.h --warnings-as-errors="*" --checks="clang-*,misc-*" --extra-arg-before="-std=c99" --extra-arg-before="-pedantic" --extra-arg-before="-Ithird_party/canlib" --extra-arg-before="-Ithird_party/rocketlib/include" --extra-arg-before="-DBOARD_TYPE_UNIQUE_ID=BOARD_TYPE_ID_RLCS_RELAY" --extra-arg-before="-DBOARD_INST_UNIQUE_ID=BOARD_INST_ID_GROUND"
