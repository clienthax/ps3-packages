set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR powerpc64)
set(CMAKE_CROSSCOMPILING TRUE)

set(PS3DEV $ENV{PS3DEV})
set(PSL1GHT $ENV{PSL1GHT})

set(CMAKE_C_COMPILER powerpc64-ps3-elf-gcc)
set(CMAKE_CXX_COMPILER powerpc64-ps3-elf-g++)
set(CMAKE_AR powerpc64-ps3-elf-ar)
set(CMAKE_RANLIB powerpc64-ps3-elf-ranlib)
set(CMAKE_STRIP powerpc64-ps3-elf-strip)
set(CMAKE_NM powerpc64-ps3-elf-nm)
set(CMAKE_LINKER powerpc64-ps3-elf-ld)

set(CMAKE_FIND_ROOT_PATH
    "${PS3DEV}/ppu/powerpc64-ps3-elf"
    "${PSL1GHT}/ppu"
    "${PS3DEV}/portlibs/ppu"
)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

#set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

SET(CMAKE_INSTALL_PREFIX $ENV{PS3DEV}/portlibs/ppu) 

set(CMAKE_C_FLAGS_INIT   "-mcpu=cell -I${PS3DEV}/ppu/powerpc64-ps3-elf/include -I${PSL1GHT}/ppu/include -I${PS3DEV}/portlibs/ppu/include")
set(CMAKE_CXX_FLAGS_INIT "-mcpu=cell -I${PS3DEV}/ppu/powerpc64-ps3-elf/include -I${PSL1GHT}/ppu/include -I${PS3DEV}/portlibs/ppu/include")
set(CMAKE_EXE_LINKER_FLAGS_INIT "-L${PS3DEV}/ppu/powerpc64-ps3-elf/lib -L${PSL1GHT}/ppu/lib -L${PS3DEV}/portlibs/ppu/lib -lrt -llv2")
