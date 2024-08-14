
CC = gcc
LDFLAGS = 

SRC =  main.c
TARGET = ashitakarahonkidasu


all:
	$(CC) $(LDFLAGS) $(SRC) -o $(TARGET)

%.o: %.c

clean:
	rm -f $(TARGET)

run:
	./$(TARGET)

.PHONY: all clean run
