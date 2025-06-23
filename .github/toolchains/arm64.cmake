# CMake toolchain file for cross-compiling to ARM64 (aarch64)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

# Set the compilers to use Clang
set(CMAKE_C_COMPILER   clang-18)
set(CMAKE_CXX_COMPILER clang++-18)

# Specify the target architecture (ARM64, aarch64)
set(CMAKE_C_FLAGS      "--target=aarch64-linux-gnu -march=armv8-a -fPIC")
set(CMAKE_CXX_FLAGS    "--target=aarch64-linux-gnu -march=armv8-a -fPIC")
set(OPENSSL_ROOT_DIR /usr/aarch64-linux-gnu)
set(OPENSSL_LIBRARIES /usr/aarch64-linux-gnu/lib)

# Where the cross-compilation libraries/headers are located
set(CMAKE_FIND_ROOT_PATH /usr/aarch64-linux-gnu)

# Set CMake to only find libraries and includes in the cross-compilation root
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Optional: Strip debug symbols (comment out if not needed)
# set(CMAKE_EXE_LINKER_FLAGS_INIT "-s")
# set(CMAKE_SHARED_LINKER_FLAGS_INIT "-s")

