include ../../Makefile.setup
include ../../config.mk

CFLAGS += -I../../include -I../../include/ump
CFLAGS += -march=armv7 -mthumb-interwork -fno-strict-aliasing -Wno-strict-aliasing -Wno-long-long
CFLAGS += -Wall -O3 -fPIC

LDFLAGS += -Wl,--no-as-needed
ifeq ($(MALI_EGL_TYPE),x11)
	LDFLAGS += -ldri2 -ldrm -lXfixes
endif

BARE_TARGET = libUMP.so
ifeq ($(MALI_VERSION),r2p4)
  TARGET = $(BARE_TARGET).2
else ifeq ($(MALI_VERSION),r3p0)
  TARGET = $(BARE_TARGET).3
else ifeq ($(MALI_VERSION),r3p1)
  TARGET = $(BARE_TARGET).3
endif

OBJECTS = ump_frontend.o \
	ump_ref_drv.o \
	ump_arch.o \
	ump_uku.o \
	ump_osu_memory.o \
	ump_osu_locks.o

all: $(TARGET)

clean:
	$(RM) *.o
	$(RM) *.P
	$(RM) $(BARE_TARGET).*

../../include/ump/ump_version.h: ../../config.mk
	$(MAKE) -C ../../include/ump/ ump_version.h

$(TARGET): ../../include/ump/ump_version.h $(OBJECTS)
	$(CC) -shared -o $@ $^ $(CFLAGS) $(LDFLAGS)

install: $(TARGET)
	$(INSTALL_DATA) $^ $(libdir)
	$(LN) $^ $(libdir)$(BARE_TARGET)

%.o : %.c
	$(COMPILE.c) -MD -o $@ $<
	@cp $*.d $*.P; \
	    sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $*.d >> $*.P; \
	    rm -f $*.d

-include $(OBJECTS:%.o=%.P)

