Powder Toy PSP
==============

I dug this source out of my inbox from sometime in 2008; I'm not sure if this particular version works, but I think it does.

It should build with http://www.jetdrone.com/minpspw pretty easily, with -DPSP -DVFPU -Os -lsdl -lm . More optimizations can be attempted at your leisure.

This port uses a bunch of PSP VFPU assembler - the portions which vectorize floating-point ops are of questionable speed improvement at best, but the psp_rand() function gains heavily by using the VFPU's random instruction rather than rand().

This is also a good starting point for simple Powder Toy SDL ports - it's an old version of Powder Toy without HTTP/updater and other features, and it's already got joystick-mouse emulation for you.
