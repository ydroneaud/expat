CC=gcc
CFLAGS=-Wall 
SRC=siphash24.c main.c
BIN=siphash24_test
BIN_DOUBLE=siphash24_test_double

all:                    $(BIN)

siphash24_test:         $(SRC)
			$(CC) $(CFLAGS) $^ -o $@

double:                 $(BIN_DOUBLE)

siphash24_test_double:  $(SRC) 
			$(CC) $(CFLAGS) $^ -o $@ -DDOUBLE

clean:
			rm -f *.o $(BIN) $(BIN_DOUBLE)

dist:                   clean
			cd ..; \
	                tar zcf SipHash-`date +%Y%m%d%H%M`.tgz SipHash/*
