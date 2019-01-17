CC=gcc
CFLAGS=-I.

all: linesort

linesort: BSTree.o getLine.o sortlines.o
	$(CC) -Wall -o linesort getLine.o sortlines.o BSTree.o

getLine.o: getLine.c
	$(CC) -Wall -c getLine.c

sortlines.o: sortlines.c
	$(CC) -Wall -c sortlines.c

BSTree.o: BSTree.o
	$(CC) -Wall -c BSTree.c

clean:
	rm -f linesort *.o
