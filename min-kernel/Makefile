PREFIX=~/riscv/bin/riscv32-unknown-linux-gnu-
CC=$(PREFIX)gcc
AS=$(PREFIX)as
LD=$(PREFIX)ld

CFLAGS = -nostdlib
CSRCS = $(wildcard *.c)
ASRCS = $(wildcard *.S)
OBJS = $(CSRCS:.c=.o) $(ASRCS:.S=.o)

.PHONY: all clean
all: kernel.bin

kernel.obj: $(OBJS)
	$(LD) -T script.ld -o $@ $^

kernel.bin: kernel.obj
	$(LD) --oformat=binary -o $@ $<

clean:
	rm -f *.o kernel.bin kernel.obj
