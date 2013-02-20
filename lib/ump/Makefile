all: unknown

include ../Makefile.config

TARGET = libUMP.so

CFLAGS += -I../../include -I../../include/ump
CFLAGS += -march=armv7 -mthumb-interwork -fno-strict-aliasing -Wno-strict-aliasing -Wno-long-long
CFLAGS += -Wall -O3 -fPIC

LDFLAGS += -Wl,--no-as-needed

X11FLAGS += -ldri2 -ldrm -lXfixes

OBJECTS = \
	ump_frontend.o \
	ump_ref_drv.o \
	ump_arch.o \
	ump_uku.o \
        ump_osu_memory.o \
        ump_osu_locks.o

clean:
	rm -f *.o
	rm -f $(TARGET)

framebuffer: $(OBJECTS)
	rm -f $(TARGET)
	$(CC) -shared -o $(TARGET) $(OBJECTS) $(CFLAGS) $(LDFLAGS)
	$(INSTALL_DATA) $(TARGET) $(libdir)

x11: $(OBJECTS)
	rm -f $(TARGET)
	$(CC) -shared -o $(TARGET) $(OBJECTS) $(CFLAGS) $(LDFLAGS) $(X11FLAGS)
	$(INSTALL_DATA) $(TARGET) $(libdir)