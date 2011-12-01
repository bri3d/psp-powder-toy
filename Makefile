TARGET = powder
OBJS   = powder.o
 
INCDIR   =
CFLAGS   = -G0 -Wall -Os -ffast-math 
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS  = $(CFLAGS)
 
LIBDIR  =
LDFLAGS =
LIBS    = -lsdl -lm
 
BUILD_PRX = 1 
 
EXTRA_TARGETS   = EBOOT.PBP
PSP_EBOOT_TITLE = Powder
PSP_EBOOT_ICON= ICON0.png
PSP_EBOOT_PIC1= PIC1.png
PSP_EBOOT_SND0= SND0.at3
 
PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
