This archive contains a boot loader (riscv-pk), Linux kernels and root
filesystems for the riscvemu project. The required patches to build
riscv-pk and the Linux kernel are in the 'patches' directory.

Usage:

- 32 bit RISCV emulation:

riscvemu -b 32 bbl32.bin root-riscv32.bin

- 64 bit RISCV emulation:

riscvemu bbl64.bin root-riscv64.bin

- 128 bit RISCV emulation (the boot loader switches XLEN to 64 bits
  but the emulator still emulates a 128 bit CPU):

riscvemu -b 128 bbl64.bin root-riscv64.bin

Note:

- riscvemu only supports raw boot loader images. So after building
  riscv-pk, you must convert the ELF image to a raw image with:

  riscv64-unknown-linux-gnu-objcopy -O binary bbl bbl.bin
