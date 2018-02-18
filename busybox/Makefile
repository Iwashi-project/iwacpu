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

build-tool/load:
	make -C build-tool

%.obj: %.o
	$(LD) -T script.ld -o $@ $^

%.bin: %.obj build-tool/load
	build-tool/load $@ $< `echo 'obase=10;ibase=16;1000' | bc`

clean:
	rm -f *.o *.obj *.bin
