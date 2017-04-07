TARGET=holder
PREFIX=/usr/local/bin

DBIN=./bin

LIBS=-lncursesw

CFLAGS=-c -Wall $(LIBS)
LDFLAGS=$(LIBS)
COUTPUT=$(TARGET)

SRC=$(wildcard *.cpp)

.PHONY: all clean install uninstall

all: $(SRC:.cpp=.o)
	@echo " Linknig..."
	@echo " g++ $(LDFLAGS) $(addprefix $(DBIN)/, $(SRC:.cpp=.o)) -o $(COUTPUT)"; g++ $(LDFLAGS) $(addprefix $(DBIN)/, $(SRC:.cpp=.o)) -o $(COUTPUT)

.cpp.o:
	mkdir -p ./bin/
	g++ $(CFLAGS) $< -o $(DBIN)/$@ $(INC)
	
install:

uninstall:

clean:
	rm -rf ./*.o $(COUTPUT)