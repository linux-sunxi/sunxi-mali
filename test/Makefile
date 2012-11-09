all: test

test: test.c
	gcc -Wall -o $@ $^ -lEGL -lGLESv2

clean:
	rm -f test
