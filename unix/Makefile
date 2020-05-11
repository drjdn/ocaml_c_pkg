include ../Makefile.config

src = $(wildcard *.c)
obj = $(src:.c=.o)

CFLAGS = $(OC_CFLAGS) $(OC_CPPFLAGS) -O2 -march=native -I../runtime 

all: $(obj)
	ar -crs libunix.a *.o

.PHONY: clean
clean:
	rm -f $(obj) libunix.a
