FLAGS = -lpthread
CC = gcc
BINS = barrier race

all: $(BINS)

race: race.o
	$(CC) $^ $(FLAGS) -o race

race.o: race.c 
	$(CC) $^ $(FLAGS) -c -o race.o

barrier: barrier.o
	$(CC) $^ $(FLAGS) -o barrier

barrier.o: barrier.c 
	$(CC) $^ $(FLAGS) -c -o barrier.o


.PHONY: clean

clean:
	rm barrier barrier.o race race.o
