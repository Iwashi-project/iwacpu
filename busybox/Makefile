PREFIX=~/riscv/bin/riscv32-unknown-linux-gnu-
CC=$(PREFIX)gcc
AS=$(PREFIX)as
LD=$(PREFIX)ld

INCLUDE = ../include
CFLAGS = -nostdlib -I$(INCLUDE)
ASFLAGS = -I$(INCLUDE)
CSRCS = $(wildcard *.c)
ASRCS = $(wildcard *.S)
OBJS = $(CSRCS:.c=.o) $(ASRCS:.S=.o)

.PHONY: all clean
all: $(OBJS:.o=.bin)

%.obj: %.o
	$(LD) -o $@ $^

%.bin: %.obj
	$(LD) --oformat=binary -o $@ $<

clean:
	rm -f *.o *.obj *.bin
