run:
	@nasm -f elf64 puzzle-01.asm
	@gcc -z noexecstack -o puzzle-01 puzzle-01.o -lc
	@./puzzle-01
	@rm puzzle-01 puzzle-01.o
