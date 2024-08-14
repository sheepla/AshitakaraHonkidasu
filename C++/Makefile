
CXX = g++
CXXFLAGS = -Wall -Wextra -O2

SRC =  main.cpp
TARGET = ashitakarahonkidasu


all:
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)

%.o: %.c

clean:
	rm -f $(TARGET)

run:
	./$(TARGET)

.PHONY: all clean run
