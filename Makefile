CROSS_COMPILE ?= aarch64-linux-gnu-

QEMU_PATH ?= ${HOME}/Workspace/qemu/build/aarch64-softmmu

CC = $(CROSS_COMPILE)gcc

SRC_ROOT = $(shell readlink -f .)
MINILIB_SRC = $(SRC_ROOT)/minilib

BOOT_OBJS = $(SRC_ROOT)/boot.o
AS_OBJS = $(patsubst %.S,%.o, $(wildcard $(SRC_ROOT)/*.S $(MINILIB_SRC)/*.S))
C_OBJS = $(patsubst %.c,%.o, $(wildcard $(SRC_ROOT)/*.c $(MINILIB_SRC)/*.c))

CFLAGS = -nostdlib -ggdb -I$(MINILIB_SRC)
LDFLAGS = -static -nostdlib -Wl,-Tkernel.ld -lgcc

QEMU_OPTS = -M virt -cpu max -nographic -m 2G
QEMU_OPTS += -semihosting -semihosting-config enable=on,target=native
QEMU_OPTS += -monitor none -serial none -kernel kernel.elf

objs = $(BOOT_OBJS) $(filter-out $(BOOT_OBJS),$(AS_OBJS)) $(C_OBJS)

kernel.elf: kernel.ld $(objs)
	$(CC) $(LDFLAGS) -o kernel.elf $(objs)

$(AS_OBJS): %.o: %.S
	$(CC) $(CFLAGS) -O0 -x assembler-with-cpp -c $< -o $@

$(C_OBJS): %.o: %.c
	$(CC) $(CFLAGS) -O2 -c $< -o $@

run: kernel.elf
	$(QEMU_PATH)/qemu-system-aarch64 $(QEMU_OPTS)

.PHONY: clean
clean:
	rm -f $(SRC_ROOT)/*.o $(MINILIB_SRC)/*.o kernel.elf

mmu.S: qemu-virt-memmap.txt
	python3 pgtable-tool/generate.py -i qemu-virt-memmap.txt \
		-o mmu.S -ttb 0x50000000 -el 1 -tg 4K -tsz 48
