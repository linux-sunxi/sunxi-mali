include ../Makefile.setup

all:
	$(MAKE) -C ump

install_ump:
	$(MAKE) -C ump install

install_egl: EGL/egl.h EGL/eglext.h EGL/eglplatform.h
	$(MKDIR) $(includedir)/EGL
	$(INSTALL_DATA) $^ $(includedir)/EGL

install_gles: GLES/gl.h GLES/glext.h GLES/glplatform.h
	$(MKDIR) $(includedir)/GLES
	$(INSTALL_DATA) $^ $(includedir)/GLES

install_gles2: GLES2/gl2.h GLES2/gl2ext.h GLES2/gl2platform.h
	$(MKDIR) $(includedir)/GLES2
	$(INSTALL_DATA) $^ $(includedir)/GLES2

install_khr: KHR/khrplatform.h
	$(MKDIR) $(includedir)/KHR
	$(INSTALL_DATA) $^ $(includedir)/KHR

install: install_ump install_egl install_gles install_gles2 install_khr

clean:
	$(MAKE) -C ump clean
