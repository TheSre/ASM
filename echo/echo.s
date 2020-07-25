# Read from stdin & echo it
 .global _start

 .text
_start:

# TODO: fix buggy behavior--need to test if read in string contains \n & if not,
# continue to read up until hitting \n
startEcho:
        # read(0, userString, 20)

        mov     $0, %rax
        mov     $0, %rdi
        mov     $userString, %rsi
        mov     $20, %rdx
        syscall

write:
        # write(1, message, 13)

        mov     $1, %rax
        mov     $1, %rdi
        mov     $userString, %rsi
        mov     $20, %rdx
        syscall
        jmp startEcho

.data
userString:
        .zero 20
