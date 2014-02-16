##
##
##
NDK_ROOT=/usr/local/android
NDK_PLAT=android-17
ARCH=armv7-a

##
##
NDK_PATH  = $(NDK_ROOT)/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64/bin
NDK_PREFIX= $(NDK_PATH)/arm-linux-androideabi-
SYSROOT   = $(NDK_ROOT)/platforms/$(NDK_PLAT)/arch-arm

CC     = $(NDK_PREFIX)gcc 
CFLAGS = -Wall --sysroot=$(SYSROOT) -static -march=$(ARCH) -msoft-float -mthumb

runscript: runscript.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ $^
