# Hello world in x86_64 assembly

Uses AT&T syntax assembly to display `Hello World` to stdout.

See `man 2 syscall` for the register names used. In short,
- rax is used for the syscall number to call
- rdi is used for the 1st arg
- rsi is used for the 2nd arg
- rdx is used for the 3rd arg

See `/usr/include/asm/unistd_64.h` for the syscall numbers used in x86_64
architecture.

## Build process
For simplicity a `build.sh` script is added. Invoke it to build the executable
`a.out` in the local directory.

The individual steps done in the build script are
- Compile assembly code to ELF 64 bit relocatable object code
    
    `as syscall.s -o syscall.o`
- Link the object code to create the ELF 64 executable
    
    `ld syscall.o -o a.out`

The final executable `a.out` is now ready to run
