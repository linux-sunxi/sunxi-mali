all: version test

clean:
	$(MAKE) -C version clean
	$(MAKE) -C test clean

version::
	$(MAKE) -C version

test::
	$(MAKE) -C test

install: unknown
unknown:
	@echo ""
	@echo "Do read the README first."
	@echo ""

framebuffer:
	$(MAKE) -C lib framebuffer

x11:
	$(MAKE) -C lib x11

headers:
	$(MAKE) -C include

