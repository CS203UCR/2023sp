	.file	"loop.c"
	.text
	.p2align 4
	.globl	loop0
	.type	loop0, @function
loop0:
.LFB23:
	.cfi_startproc
	endbr64
	testl	%ecx, %ecx
	jle	.L7
	leal	-1(%rsi), %eax
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	leaq	4(%rdi,%rax,4), %r10
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rdi, %rax
	testl	%esi, %esi
	je	.L6
	.p2align 4,,10
	.p2align 3
.L5:
	xorl	%r9d, %r9d
	cmpl	%edx, (%rax)
	setge	%r9b
	addq	$4, %rax
	addl	%r9d, %r8d
	cmpq	%r10, %rax
	jne	.L5
.L6:
	addl	$1, %r11d
	cmpl	%r11d, %ecx
	jne	.L3
	movl	%r8d, %eax
	ret
.L7:
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	loop0, .-loop0
	.p2align 4
	.globl	loop1
	.type	loop1, @function
loop1:
.LFB24:
	.cfi_startproc
	endbr64
	leaq	40(%rdi), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L13:
	addl	(%rdi), %eax
	addq	$4, %rdi
	cmpq	%rdx, %rdi
	jne	.L13
	ret
	.cfi_endproc
.LFE24:
	.size	loop1, .-loop1
	.p2align 4
	.globl	loop2
	.type	loop2, @function
loop2:
.LFB25:
	.cfi_startproc
	endbr64
	movl	(%rdi), %eax
	leaq	4(%rdi), %rcx
	xorl	%edx, %edx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L18:
	movl	(%rcx), %eax
	testb	$1, %dl
	je	.L17
	addl	%eax, %eax
	movl	%eax, (%rcx)
.L17:
	addq	$4, %rcx
.L16:
	addl	%edx, %eax
	addl	$1, %edx
	movl	%eax, -4(%rcx)
	cmpl	$100, %edx
	jne	.L18
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	loop2, .-loop2
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
