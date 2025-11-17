#!/bin/sh
set -x
${CLANG_FORMAT:-clang-format} -i relay_board/*.c relay_board/*.h
