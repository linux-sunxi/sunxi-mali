include ../Makefile.setup
include ../config.mk

CFLAGS ?= -Wall

ifeq ($(MALI_EGL_TYPE),x11)
  CFLAGS += -DUSE_X=1
endif

all: test

test: ../config.mk test.c
	$(CC) $(CFLAGS) -o $@ test.c -lEGL -lGLESv2

clean:
	rm -f test
