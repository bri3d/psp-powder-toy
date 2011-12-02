TARGET = powder
OBJS   = powder.o
 
INCDIR   =
CFLAGS   = -G0 -Os -ffast-math -Wall -DPSP -DJOYSTICK -DVFPU -DSCALE=1 -DBGR
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS  = $(CFLAGS)
 
LIBDIR  =
LDFLAGS =
LIBS    = -lSDLmain -lSDL -lpspgu -lpspaudio -lpsphprm -lpspirkeyb -lpsppower -lm
 
PSP_FW_VERSION = 200
BUILD_PRX = 1
 
EXTRA_TARGETS   = EBOOT.PBP
PSP_EBOOT_TITLE = Powder
PSP_EBOOT_ICON= NULL
PSP_EBOOT_PIC1= NULL
PSP_EBOOT_SND0= NULL
 
PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
