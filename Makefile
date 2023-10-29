default:
	nasm -f elf32 $(a).asm -o $(a).o
	ld -m elf_i386 $(a).o -o $(a)

# elf32 (executable linking format) used by linux
# elf_i386, x86 program for linux
