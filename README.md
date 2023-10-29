# Assembly
## Hello World!

Im following [this](https://www.youtube.com/watch?v=wLXIWKUWpSs&list=PLmxT2pVYo5LB5EzTPZGfFN0c2GDiSXgQe) video tutorial

[Linux System Call Table](https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md)

There are several registers that can store simple information.
For this case I'm using eax and ebx to control the behaviour of a system call.
ex2.asm also contains sections (not sure about that just yet) and a string variable
The length of the string is determined with the $ operator (somehow), and is necessary for a sys_write system call
An eax of 4 and ebx of 1 performs stdout, ecx is used for the string, and edx for string length
The system call performs the specified operation, printing "Hello, World!" to the terminal.

This is written in elf32 (exectuable linking format, 32-bit) for linux.
