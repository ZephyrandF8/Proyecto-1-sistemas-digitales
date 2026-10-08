	.file	"OrdenamientoB.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	numero
	.bss
	.align 4
	.type	numero, @object
	.size	numero, 4
numero:
	.zero	4
	.globl	numeros
	.align 16
	.type	numeros, @object
	.size	numeros, 20
numeros:
	.zero	20
	.globl	i
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.globl	j
	.align 4
	.type	j, @object
	.size	j, 4
j:
	.zero	4
	.globl	aux
	.align 4
	.type	aux, @object
	.size	aux, 4
aux:
	.zero	4
	.section	.rodata
.LC0:
	.string	"Ingresa un numero: "
.LC1:
	.string	"N\303\272meros ordenados: "
.LC2:
	.string	" "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1522:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, i(%rip)
.L3:
	movl	i(%rip), %eax
	cmpl	$4, %eax
	jg	.L2
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	numero(%rip), %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZNSirsERi@PLT
	movl	i(%rip), %edx
	movl	numero(%rip), %eax
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	numeros(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
	jmp	.L3
.L2:
	movl	$0, i(%rip)
.L8:
	movl	i(%rip), %eax
	cmpl	$4, %eax
	jg	.L4
	movl	$0, j(%rip)
.L7:
	movl	j(%rip), %eax
	cmpl	$3, %eax
	jg	.L5
	movl	j(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	numeros(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	j(%rip), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	numeros(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jle	.L6
	movl	j(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	numeros(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, aux(%rip)
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	j(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	numeros(%rip), %rax
	movl	(%rcx,%rax), %eax
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	numeros(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	movl	j(%rip), %eax
	leal	1(%rax), %edx
	movl	aux(%rip), %eax
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	numeros(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
.L6:
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
	jmp	.L7
.L5:
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
	jmp	.L8
.L4:
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$0, i(%rip)
.L10:
	movl	i(%rip), %eax
	cmpl	$4, %eax
	jg	.L9
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	numeros(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
	jmp	.L10
.L9:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1522:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2006:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L14
	cmpl	$65535, -8(%rbp)
	jne	.L14
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2006:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_numero, @function
_GLOBAL__sub_I_numero:
.LFB2007:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2007:
	.size	_GLOBAL__sub_I_numero, .-_GLOBAL__sub_I_numero
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_numero
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
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
