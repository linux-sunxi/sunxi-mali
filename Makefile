all: version

clean:
	$(MAKE) -C version clean

version::
	$(MAKE) -C version

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

