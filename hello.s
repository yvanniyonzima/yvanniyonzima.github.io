       .file   "hello.c"
        .text
        .section        .rodata.str1.1,"aMS",@progbits,1
.LC0:
        .string "Hello world!"
        .section        .text.startup,"ax",@progbits
        .p2align 4,,15
        .globl  main
        .type   main, @function
main:
.LFB23:
        .cfi_startproc
        leaq    .LC0(%rip), %rdi
        subq    $8, %rsp
        .cfi_def_cfa_offset 16
        call    puts@PLT        ;function call
        xorl    %eax, %eax
        addq    $8, %rsp
        .cfi_def_cfa_offset 8
        ret                     ;return call
        .cfi_endproc
.LFE23:
        .size   main, .-main
        .ident  "GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
        .section        .note.GNU-stack,"",@progbits