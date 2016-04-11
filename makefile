CC=gcc
CFLAGS=-Wall 
SRC=siphash24.c main.c
BIN=siphash24_test

all:                    $(BIN)

siphash24_test:         $(SRC)
			$(CC) $(CFLAGS) $^ -o $@

clean:
			rm -f *.o $(BIN)

dist:                   clean
			cd ..; \
	                tar zcf SipHash-`date +%Y%m%d%H%M`.tgz SipHash/*
