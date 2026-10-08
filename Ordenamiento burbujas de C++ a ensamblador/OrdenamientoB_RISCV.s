	.file	"OrdenamientoB.cpp"
	.option pic
	.text
	.section	.rodata
	.align	3
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.globl	numero
	.bss
	.align	2
	.type	numero, @object
	.size	numero, 4
numero:
	.zero	4
	.globl	numeros
	.align	3
	.type	numeros, @object
	.size	numeros, 20
numeros:
	.zero	20
	.globl	i
	.align	2
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.globl	j
	.align	2
	.type	j, @object
	.size	j, 4
j:
	.zero	4
	.globl	aux
	.align	2
	.type	aux, @object
	.size	aux, 4
aux:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"Ingresa un numero: "
	.align	3
.LC1:
	.string	"N\303\272meros ordenados: "
	.align	3
.LC2:
	.string	" "
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1519:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a5,i
	sw	zero,0(a5)
.L3:
	lla	a5,i
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,4
	bgt	a4,a5,.L2
	lla	a1,.LC0
	la	a0,_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	lla	a1,numero
	la	a0,_ZSt3cin
	call	_ZNSirsERi@plt
	lla	a5,i
	lw	a5,0(a5)
	lla	a4,numero
	lw	a4,0(a4)
	lla	a3,numeros
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lla	a5,i
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,i
	sw	a4,0(a5)
	j	.L3
.L2:
	lla	a5,i
	sw	zero,0(a5)
.L8:
	lla	a5,i
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,4
	bgt	a4,a5,.L4
	lla	a5,j
	sw	zero,0(a5)
.L7:
	lla	a5,j
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,3
	bgt	a4,a5,.L5
	lla	a5,j
	lw	a5,0(a5)
	lla	a4,numeros
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	lla	a5,j
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,numeros
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L6
	lla	a5,j
	lw	a5,0(a5)
	lla	a4,numeros
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,aux
	sw	a4,0(a5)
	lla	a5,j
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,j
	lw	a5,0(a5)
	lla	a3,numeros
	slli	a4,a4,2
	add	a4,a3,a4
	lw	a4,0(a4)
	lla	a3,numeros
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lla	a5,j
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,aux
	lw	a4,0(a4)
	lla	a3,numeros
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L6:
	lla	a5,j
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,j
	sw	a4,0(a5)
	j	.L7
.L5:
	lla	a5,i
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,i
	sw	a4,0(a5)
	j	.L8
.L4:
	lla	a1,.LC1
	la	a0,_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	lla	a5,i
	sw	zero,0(a5)
.L10:
	lla	a5,i
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,4
	bgt	a4,a5,.L9
	lla	a5,i
	lw	a5,0(a5)
	lla	a4,numeros
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	la	a0,_ZSt4cout
	call	_ZNSolsEi@plt
	mv	a5,a0
	lla	a1,.LC2
	mv	a0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	lla	a5,i
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,i
	sw	a4,0(a5)
	j	.L10
.L9:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1519:
	.size	main, .-main
	.align	1
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2003:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L14
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L14
	lla	a0,_ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev@plt
	lla	a2,__dso_handle
	lla	a1,_ZStL8__ioinit
	la	a0,_ZNSt8ios_base4InitD1Ev
	call	__cxa_atexit@plt
.L14:
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2003:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	1
	.type	_GLOBAL__sub_I_numero, @function
_GLOBAL__sub_I_numero:
.LFB2004:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a5,65536
	addi	a1,a5,-1
	li	a0,1
	call	_Z41__static_initialization_and_destruction_0ii
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2004:
	.size	_GLOBAL__sub_I_numero, .-_GLOBAL__sub_I_numero
	.section	.init_array,"aw"
	.align	3
	.dword	_GLOBAL__sub_I_numero
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
