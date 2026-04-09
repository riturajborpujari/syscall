msg:
	.ascii "Hello World\n"

.global _start
_start:
    movq $1, %rax				# syscall number to call
    movq $1, %rdi               # stdout as the first param
    movq $msg, %rsi             # address of msg as second
    movq $12, %rdx              # 12(length of the message) as third
    syscall

    movq $60, %rax
    movq $0, %rdi
    syscall
