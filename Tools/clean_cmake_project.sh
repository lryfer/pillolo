rm -rf build CMakeCache.txt CMakeFiles cmake_install.cmake
cmake -S . -B build \
  -DCMAKE_TOOLCHAIN_FILE=cmake/arm-none-eabi.cmake

