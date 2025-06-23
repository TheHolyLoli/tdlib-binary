set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(CMAKE_C_COMPILER   clang-18)
set(CMAKE_CXX_COMPILER clang++-18)

set(CMAKE_C_FLAGS      "--target=aarch64-linux-gnu")
set(CMAKE_CXX_FLAGS    "--target=aarch64-linux-gnu -stdlib=libc++")

# Where the cross libraries/headers live
set(CMAKE_FIND_ROOT_PATH /usr/aarch64-linux-gnu)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
