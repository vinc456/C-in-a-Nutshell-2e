all: linesort

linesort: BSTree.o getLine.o sortlines.o
	g++ -Wall -o td List_Test_Driver.o List.o Patient.o

getLine.o: getLine.c
	g++ -Wall -c getLine.c

sortlines.o: sortlines.c
	g++ -Wall -c sortlines.c

BSTree.o: BSTree.o
	g++ -Wall -c BSTree.c

clean:
	rm -f linesort *.o
