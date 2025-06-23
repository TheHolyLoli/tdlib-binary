# ---------------------------------------------------------------------------
# CMake tool-chain for building on x86_64 while targeting 32-bit ARM (armhf)
# ---------------------------------------------------------------------------

# Specify the system we're cross-compiling for
set(CMAKE_SYSTEM_NAME       Linux)
set(CMAKE_SYSTEM_PROCESSOR  arm)

# Use Clang as the front-end compiler
set(CMAKE_C_COMPILER        clang-18)
set(CMAKE_CXX_COMPILER      clang++-18)

# Cross-compile flags for ARM (armv7, hard-float, NEON/SIMD)
set(CMAKE_C_FLAGS_INIT     "--target=arm-linux-gnueabihf -march=armv7-a -mfpu=neon-vfpv4 -mfloat-abi=hard")
set(CMAKE_CXX_FLAGS_INIT   "${CMAKE_C_FLAGS_INIT}")

# Where the cross libraries/headers live (typically the sysroot path)
set(CMAKE_FIND_ROOT_PATH   /usr/arm-linux-gnueabihf)

# CMake should not search for programs in the sysroot path (use only cross-compiled libraries)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Optional: Strip debug symbols to reduce size of binaries
# set(CMAKE_EXE_LINKER_FLAGS_INIT "-s")
# set(CMAKE_SHARED_LINKER_FLAGS_INIT "-s")
