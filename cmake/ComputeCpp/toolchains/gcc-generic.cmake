set(CMAKE_SYSTEM_NAME Linux)
set(COMPUTECPP_SYSROOT_DIR $ENV{COMPUTECPP_SYSROOT_DIR})
set(COMPUTECPP_TOOLCHAIN_DIR $ENV{COMPUTECPP_TOOLCHAIN_DIR})
set(COMPUTECPP_TARGET_TRIPLE $ENV{COMPUTECPP_TARGET_TRIPLE})

if(NOT COMPUTECPP_SYSROOT_DIR OR
  NOT COMPUTECPP_TOOLCHAIN_DIR OR
  NOT COMPUTECPP_TARGET_TRIPLE
)
  message(FATAL_ERROR
    "Please set all of COMPUTECPP_TARGET_TRIPLE, COMPUTECPP_SYSROOT_DIR and "
    "COMPUTECPP_TOOLCHAIN_DIR in the environment when crosscompiling.")
endif()

set(CMAKE_SYSROOT ${COMPUTECPP_SYSROOT_DIR})
set(CMAKE_C_COMPILER ${COMPUTECPP_TOOLCHAIN_DIR}/bin/${COMPUTECPP_TARGET_TRIPLE}-gcc)
set(CMAKE_CXX_COMPILER ${COMPUTECPP_TOOLCHAIN_DIR}/bin/${COMPUTECPP_TARGET_TRIPLE}-g++)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY NEVER)