NAME=FaceDetection
CC=gcc

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc

SOURCE=$(wildcard *.m)

CFLAGS=-Wall -Werror -g -v $(SOURCE)
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=build/$(NAME)

all: 
	$(shell mkdir -p $(shell dirname $(OUT)))
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(OUT)

run:
	clear
	./$(OUT)

clean: 
	$(shell rm -rf ./$(shell dirname $(OUT))/*)
