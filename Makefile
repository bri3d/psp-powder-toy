TARGET = powder
OBJS   = powder.o vfpu.o
 
INCDIR   =
CFLAGS   = -G0 -O3 -Wall -DPSP -DJOYSTICK -DSCALE=1 -DFPS -DVFPU
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS  = $(CFLAGS)
 
LIBDIR  =
LDFLAGS =
LIBS    = -lpspaudio -lpspctrl -lpsprtc -lpsphprm -lpspirkeyb -lpsppower -lpspdisplay -lm 
 
PSP_FW_VERSION = 200
BUILD_PRX = 1
 
EXTRA_TARGETS   = EBOOT.PBP
PSP_EBOOT_TITLE = Powder
PSP_EBOOT_ICON= NULL
PSP_EBOOT_PIC1= NULL
PSP_EBOOT_SND0= NULL
 
PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
