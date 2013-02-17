all: clean

x11: test.c
	rm -f test
	gcc -Wall -o test $^ -DUSE_X=1 -lEGL -lGLESv2

framebuffer: test.c
	rm -f test
	gcc -Wall -o test $^ -lEGL -lGLESv2

clean:
	rm -f test
