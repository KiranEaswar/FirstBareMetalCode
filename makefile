all:
	arm-none-eabi-gcc -c -O0 -mcpu=cortex-m4 -Wall main.c -o main.o
	arm-none-eabi-gcc -x assembler-with-cpp -c -O0 -mcpu=cortex-m4 -Wall core.s -o core.o
	arm-none-eabi-gcc core.o -mcpu=cortex-m4 -mthumb -Wall --specs=nosys.specs -nostdlib -lgcc -T./memory.ld -o main.elf
clean:
	rm *.o
	rm *.elfz