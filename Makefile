all:
	gcc main.o foo.o -o test

comp: main.o foo.o

main.o: main.c
	gcc -c main.c -o main.o

foo.o: foo.c
	gcc -c foo.c -o foo.o
