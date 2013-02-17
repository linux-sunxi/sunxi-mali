all: version test

clean:
	$(MAKE) -C version clean
	$(MAKE) -C test clean

version::
	$(MAKE) -C version

install: unknown
unknown:
	@echo ""
	@echo "Do read the README first."
	@echo ""

framebuffer:
	$(MAKE) -C lib framebuffer
	$(MAKE) -C test framebuffer

x11:
	$(MAKE) -C lib x11
	$(MAKE) -C test x11

headers:
	$(MAKE) -C include

