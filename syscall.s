.data
msg: .ascii "Hello World\n"

.set __nr_write,	 1
.set __nr_exit,		60

.text
.global _start

_start:
    movq $__nr_write, %rax      # syscall number to call
    movq $1, %rdi               # stdout as the first param
    movq $msg, %rsi             # address of msg as second
    movq $12, %rdx              # 12(length of the message) as third
    syscall

    movq $__nr_exit, %rax
    movq $0, %rdi
    syscall
