PREFIX=riscv32-unknown-linux-gnu-
CC=$(PREFIX)gcc
AS=$(PREFIX)as
LD=$(PREFIX)ld

INCLUDE = ../include
CFLAGS = -nostdlib -I$(INCLUDE) -march=rv32ima
ASFLAGS = -I$(INCLUDE)
CSRCS = $(wildcard *.c)
ASRCS = $(wildcard *.S)
OBJS = $(CSRCS:.c=.o) $(ASRCS:.S=.o)

.PHONY: all clean
all: echo.bin

build-tool/load:
	make -C build-tool

echo.obj: $(OBJS)
	$(LD) -T script.ld -o $@ $^

echo.bin: echo.obj build-tool/load
	build-tool/load $@ $< `echo 'obase=10;ibase=16;2000' | bc`

clean:
	make clean -C build-tool
	rm -f *.o echo.bin echo.obj
