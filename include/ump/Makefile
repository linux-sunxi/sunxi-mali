include ../../Makefile.setup

all: ump_version.h

include ../../config.mk

ifeq ($(MALI_VERSION),r2p4)
  UMP_VERSION = 2
else ifeq ($(MALI_VERSION),r3p0)
  UMP_VERSION = 3
else ifeq ($(MALI_VERSION),r3p1)
  UMP_VERSION = 3
else
  # should've been caught when setting up config.mk.
  $(error Unknown/unhandled Mali Version "$(MALI_VERSION)")
endif

UMP_HEADERS = ump_debug.h \
	ump_version.h \
	ump.h \
	ump_osu.h \
	ump_platform.h \
	ump_ref_drv.h \
	ump_uk_types.h

ump_version.h: ../../config.mk
	echo "#ifndef _UMP_VERSION_H_" > $@
	echo "#define _UMP_VERSION_H_ 1" >> $@
	echo "" >> $@
	echo "#define UNIFIED_MEMORY_PROVIDER_VERSION $(UMP_VERSION)" >> $@
	echo "" >> $@
	echo "#endif /* _UMP_VERSION_H_ */" >> $@

install: $(UMP_HEADERS)
	$(MKDIR) $(includedir)/ump
	$(INSTALL_DATA) $^ $(includedir)/ump

clean:
	$(RM) ump_version.h
