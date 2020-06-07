CC = g++ # Compiler
DEBUG = -g
CFLAGS = -Wall -pedantic-errors -c -std=EXAMPLE $(DEBUG) # Compilation flags
LFLAGS = -Wall -pedantic-errors $(DEBUG) # Linking flags

main.o: main.cpp
	$(CC) main.cpp $(CFLAGS)

main.out: main.o
	$(CC) -o main.out main.o $(LFLAGS)

compile: main.out

clean:
	rm *.o && rm main.out

run: compile
	./main.out
