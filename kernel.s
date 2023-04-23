	.file	"kernel.c"
	.text
	.globl	TERMINAL_BUFFER
	.bss
	.align 8
	.type	TERMINAL_BUFFER, @object
	.size	TERMINAL_BUFFER, 8
TERMINAL_BUFFER:
	.zero	8
	.text
	.type	VGA_DefaultEntry, @function
VGA_DefaultEntry:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	orb	$15, %ah
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	VGA_DefaultEntry, .-VGA_DefaultEntry
	.globl	KERNEL_MAIN
	.type	KERNEL_MAIN, @function
KERNEL_MAIN:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	$753664, TERMINAL_BUFFER(%rip)
	movq	TERMINAL_BUFFER(%rip), %rbx
	movl	$72, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	movq	TERMINAL_BUFFER(%rip), %rax
	leaq	2(%rax), %rbx
	movl	$101, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	movq	TERMINAL_BUFFER(%rip), %rax
	leaq	4(%rax), %rbx
	movl	$108, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	movq	TERMINAL_BUFFER(%rip), %rax
	leaq	6(%rax), %rbx
	movl	$108, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	movq	TERMINAL_BUFFER(%rip), %rax
	leaq	8(%rax), %rbx
	movl	$111, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	movq	TERMINAL_BUFFER(%rip), %rax
	leaq	10(%rax), %rbx
	movl	$32, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	movq	TERMINAL_BUFFER(%rip), %rax
	leaq	12(%rax), %rbx
	movl	$87, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	movq	TERMINAL_BUFFER(%rip), %rax
	leaq	14(%rax), %rbx
	movl	$111, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	movq	TERMINAL_BUFFER(%rip), %rax
	leaq	16(%rax), %rbx
	movl	$114, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	movq	TERMINAL_BUFFER(%rip), %rax
	leaq	18(%rax), %rbx
	movl	$108, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	movq	TERMINAL_BUFFER(%rip), %rax
	leaq	20(%rax), %rbx
	movl	$100, %edi
	call	VGA_DefaultEntry
	movw	%ax, (%rbx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	KERNEL_MAIN, .-KERNEL_MAIN
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
