#!/bin/sh
## usage make -C ../pillolo-build -j$(nproc)
## or in cmake --build ~/Projects/pillolo-build -j$(nproc)

set -e

PROJECT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
BUILD_DIR="$PROJECT_DIR/../pillolo-build"

rm -rf "$BUILD_DIR"

cmake -G "Eclipse CDT4 - Unix Makefiles" \
    -S "$PROJECT_DIR" \
    -B "$BUILD_DIR" \
    -DCMAKE_TOOLCHAIN_FILE="$PROJECT_DIR/cmake/arm-none-eabi.cmake"

cmake --build "$BUILD_DIR" -j"$(nproc)"

