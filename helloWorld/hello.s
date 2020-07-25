# Give a greeting 10 times
 .global _start

 .text
_start:
        mov     $10, %rbp

write:
        # write(1, message, 13)

        mov     $1, %rax
        mov     $1, %rdi
        mov     $message, %rsi
        mov     $13, %rdx
        syscall
        dec     %rbp
        jg      write

        # exit(0)
        mov     $60, %rax
        xor     %edi, %edi
        syscall

message:
        .string  "Hello!\n"
