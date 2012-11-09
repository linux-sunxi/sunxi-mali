all: version

clean:
	$(MAKE) -C version clean

version::
	$(MAKE) -C version
