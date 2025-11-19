#!/bin/sh
set -x
${CLANG_FORMAT:-clang-format} -i --style=file:third_party/rocketlib/.clang-format relay_board/*.c relay_board/*.h
