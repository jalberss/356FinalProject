FLAGS = -lpthread
CC = gcc

barrier: barrier.o
	$(CC) $^ $(FLAGS) -o barrier

barrier.o: barrier.c 
	$(CC) $^ $(FLAGS) -c -o barrier.o


.PHONY: clean

clean:
	rm barrier barrier.o
