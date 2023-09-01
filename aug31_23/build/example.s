	.text
	.file	"LLVMDialectModule"
	.globl	kernel                          # -- Begin function kernel
	.p2align	4, 0x90
	.type	kernel,@function
kernel:                                 # @kernel
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movq	144(%rsp), %r13
	movq	88(%rsp), %r12
	movl	$120, %edi
	callq	malloc@PLT
	movq	%rax, %r14
	xorl	%eax, %eax
	movq	%r14, %rcx
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	incq	%rax
	addq	$24, %rcx
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	cmpq	$4, %rax
	jg	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%rcx, %rdx
	xorl	%esi, %esi
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	incq	%rsi
	addq	$12, %rdx
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	cmpq	$1, %rsi
	jg	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	xorl	%edi, %edi
	cmpq	$2, %rdi
	jg	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, (%rdx,%rdi,4)
	incq	%rdi
	cmpq	$2, %rdi
	jle	.LBB0_6
	jmp	.LBB0_7
.LBB0_9:
	xorl	%eax, %eax
	movq	%r14, %rcx
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_10 Depth=1
	incq	%rax
	addq	$24, %rcx
	addq	$24, %r15
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_15 Depth 3
	cmpq	$4, %rax
	jg	.LBB0_18
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	%r15, %rdx
	movq	%rcx, %rsi
	xorl	%edi, %edi
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	incq	%rdi
	addq	$4, %rsi
	addq	$8, %rdx
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
	cmpq	$2, %rdi
	jg	.LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movq	%rsi, %r8
	xorl	%r9d, %r9d
	cmpq	$1, %r9
	jg	.LBB0_16
	.p2align	4, 0x90
.LBB0_15:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%rdx,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%r8)
	incq	%r9
	addq	$12, %r8
	cmpq	$1, %r9
	jle	.LBB0_15
	jmp	.LBB0_16
.LBB0_18:
	movl	$160, %edi
	callq	malloc@PLT
	xorl	%ecx, %ecx
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_19 Depth=1
	incq	%rcx
	addq	$32, %rax
.LBB0_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #       Child Loop BB0_24 Depth 3
	cmpq	$4, %rcx
	jg	.LBB0_27
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movq	%rax, %rdx
	xorl	%esi, %esi
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_25:                               #   in Loop: Header=BB0_21 Depth=2
	incq	%rsi
	addq	$16, %rdx
.LBB0_21:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
	cmpq	$1, %rsi
	jg	.LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=2
	xorl	%edi, %edi
	cmpq	$3, %rdi
	jg	.LBB0_25
	.p2align	4, 0x90
.LBB0_24:                               #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, (%rdx,%rdi,4)
	incq	%rdi
	cmpq	$3, %rdi
	jle	.LBB0_24
	jmp	.LBB0_25
.LBB0_27:
	movl	$48, %edi
	callq	malloc@PLT
	movq	%rax, %r15
	xorl	%eax, %eax
	movq	%r15, %rcx
	jmp	.LBB0_28
	.p2align	4, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_28 Depth=1
	incq	%rax
	addq	$16, %rcx
.LBB0_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
	cmpq	$2, %rax
	jg	.LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=1
	xorl	%edx, %edx
	cmpq	$3, %rdx
	jg	.LBB0_32
	.p2align	4, 0x90
.LBB0_31:                               #   Parent Loop BB0_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$0, (%rcx,%rdx,4)
	incq	%rdx
	cmpq	$3, %rdx
	jle	.LBB0_31
	jmp	.LBB0_32
.LBB0_33:
	xorl	%eax, %eax
	movq	%r15, %rcx
	jmp	.LBB0_34
	.p2align	4, 0x90
.LBB0_38:                               #   in Loop: Header=BB0_34 Depth=1
	incq	%rax
	addq	$4, %rcx
	addq	$12, %r12
.LBB0_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
	cmpq	$3, %rax
	jg	.LBB0_39
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=1
	movq	%rcx, %rdx
	xorl	%esi, %esi
	cmpq	$2, %rsi
	jg	.LBB0_38
	.p2align	4, 0x90
.LBB0_37:                               #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r12,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdx)
	incq	%rsi
	addq	$16, %rdx
	cmpq	$2, %rsi
	jle	.LBB0_37
	jmp	.LBB0_38
.LBB0_39:
	movl	$160, %edi
	callq	malloc@PLT
	xorl	%ecx, %ecx
	jmp	.LBB0_40
	.p2align	4, 0x90
.LBB0_47:                               #   in Loop: Header=BB0_40 Depth=1
	incq	%rcx
	addq	$32, %rax
.LBB0_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_45 Depth 3
	cmpq	$4, %rcx
	jg	.LBB0_48
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=1
	movq	%rax, %rdx
	xorl	%esi, %esi
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_46:                               #   in Loop: Header=BB0_42 Depth=2
	incq	%rsi
	addq	$16, %rdx
.LBB0_42:                               #   Parent Loop BB0_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_45 Depth 3
	cmpq	$1, %rsi
	jg	.LBB0_47
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=2
	xorl	%edi, %edi
	cmpq	$3, %rdi
	jg	.LBB0_46
	.p2align	4, 0x90
.LBB0_45:                               #   Parent Loop BB0_40 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, (%rdx,%rdi,4)
	incq	%rdi
	cmpq	$3, %rdi
	jle	.LBB0_45
	jmp	.LBB0_46
.LBB0_48:
	movl	$240, %edi
	callq	malloc@PLT
	movq	%rax, %r12
	xorl	%eax, %eax
	movq	%r12, %rcx
	jmp	.LBB0_49
	.p2align	4, 0x90
.LBB0_56:                               #   in Loop: Header=BB0_49 Depth=1
	incq	%rax
	addq	$48, %rcx
.LBB0_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_51 Depth 2
                                        #       Child Loop BB0_54 Depth 3
	cmpq	$4, %rax
	jg	.LBB0_57
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=1
	movq	%r15, %rdx
	movq	%rcx, %rsi
	xorl	%edi, %edi
	jmp	.LBB0_51
	.p2align	4, 0x90
.LBB0_55:                               #   in Loop: Header=BB0_51 Depth=2
	incq	%rdi
	addq	$16, %rsi
	addq	$16, %rdx
.LBB0_51:                               #   Parent Loop BB0_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
	cmpq	$2, %rdi
	jg	.LBB0_56
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=2
	xorl	%r8d, %r8d
	cmpq	$3, %r8
	jg	.LBB0_55
	.p2align	4, 0x90
.LBB0_54:                               #   Parent Loop BB0_49 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%rdx,%r8,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rsi,%r8,4)
	incq	%r8
	cmpq	$3, %r8
	jle	.LBB0_54
	jmp	.LBB0_55
.LBB0_57:
	movl	$160, %edi
	callq	malloc@PLT
	movq	%rax, %r15
	xorl	%eax, %eax
	movq	%r15, %rcx
	jmp	.LBB0_58
	.p2align	4, 0x90
.LBB0_65:                               #   in Loop: Header=BB0_58 Depth=1
	incq	%rax
	addq	$32, %rcx
.LBB0_58:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_60 Depth 2
                                        #       Child Loop BB0_63 Depth 3
	cmpq	$4, %rax
	jg	.LBB0_66
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=1
	movq	%rcx, %rdx
	xorl	%esi, %esi
	jmp	.LBB0_60
	.p2align	4, 0x90
.LBB0_64:                               #   in Loop: Header=BB0_60 Depth=2
	incq	%rsi
	addq	$16, %rdx
.LBB0_60:                               #   Parent Loop BB0_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_63 Depth 3
	cmpq	$1, %rsi
	jg	.LBB0_65
# %bb.61:                               #   in Loop: Header=BB0_60 Depth=2
	xorl	%edi, %edi
	cmpq	$3, %rdi
	jg	.LBB0_64
	.p2align	4, 0x90
.LBB0_63:                               #   Parent Loop BB0_58 Depth=1
                                        #     Parent Loop BB0_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, (%rdx,%rdi,4)
	incq	%rdi
	cmpq	$3, %rdi
	jle	.LBB0_63
	jmp	.LBB0_64
.LBB0_66:
	xorl	%eax, %eax
	jmp	.LBB0_67
	.p2align	4, 0x90
.LBB0_77:                               #   in Loop: Header=BB0_67 Depth=1
	incq	%rax
	addq	$48, %r12
	addq	$24, %r14
.LBB0_67:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_71 Depth 3
                                        #         Child Loop BB0_74 Depth 4
	cmpq	$4, %rax
	jg	.LBB0_78
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=1
	movq	%r14, %rcx
	xorl	%edx, %edx
	jmp	.LBB0_69
	.p2align	4, 0x90
.LBB0_76:                               #   in Loop: Header=BB0_69 Depth=2
	incq	%rdx
	addq	$12, %rcx
.LBB0_69:                               #   Parent Loop BB0_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_71 Depth 3
                                        #         Child Loop BB0_74 Depth 4
	cmpq	$1, %rdx
	jg	.LBB0_77
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=2
	movq	%r12, %rsi
	xorl	%edi, %edi
	jmp	.LBB0_71
	.p2align	4, 0x90
.LBB0_75:                               #   in Loop: Header=BB0_71 Depth=3
	incq	%rdi
	addq	$4, %rsi
.LBB0_71:                               #   Parent Loop BB0_67 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_74 Depth 4
	cmpq	$3, %rdi
	jg	.LBB0_76
# %bb.72:                               #   in Loop: Header=BB0_71 Depth=3
	movq	%rsi, %r8
	xorl	%r9d, %r9d
	cmpq	$2, %r9
	jg	.LBB0_75
	.p2align	4, 0x90
.LBB0_74:                               #   Parent Loop BB0_67 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        #       Parent Loop BB0_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movss	(%rcx,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	leaq	(,%rdx,4), %r10
	leaq	(%r10,%rax,8), %r10
	addq	%rdi, %r10
	mulss	(%r8), %xmm0
	addss	(%r15,%r10,4), %xmm0
	movss	%xmm0, (%r15,%r10,4)
	incq	%r9
	addq	$16, %r8
	cmpq	$2, %r9
	jle	.LBB0_74
	jmp	.LBB0_75
.LBB0_78:
	movl	$160, %edi
	callq	malloc@PLT
	xorl	%ecx, %ecx
	jmp	.LBB0_79
	.p2align	4, 0x90
.LBB0_86:                               #   in Loop: Header=BB0_79 Depth=1
	incq	%rcx
	addq	$32, %rax
.LBB0_79:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_81 Depth 2
                                        #       Child Loop BB0_84 Depth 3
	cmpq	$4, %rcx
	jg	.LBB0_87
# %bb.80:                               #   in Loop: Header=BB0_79 Depth=1
	movq	%rax, %rdx
	xorl	%esi, %esi
	jmp	.LBB0_81
	.p2align	4, 0x90
.LBB0_85:                               #   in Loop: Header=BB0_81 Depth=2
	incq	%rsi
	addq	$16, %rdx
.LBB0_81:                               #   Parent Loop BB0_79 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_84 Depth 3
	cmpq	$1, %rsi
	jg	.LBB0_86
# %bb.82:                               #   in Loop: Header=BB0_81 Depth=2
	xorl	%edi, %edi
	cmpq	$3, %rdi
	jg	.LBB0_85
	.p2align	4, 0x90
.LBB0_84:                               #   Parent Loop BB0_79 Depth=1
                                        #     Parent Loop BB0_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, (%rdx,%rdi,4)
	incq	%rdi
	cmpq	$3, %rdi
	jle	.LBB0_84
	jmp	.LBB0_85
.LBB0_87:
	movl	$160, %edi
	callq	malloc@PLT
	movq	%rax, %r14
	xorl	%eax, %eax
	movq	%r14, %rcx
	jmp	.LBB0_88
	.p2align	4, 0x90
.LBB0_95:                               #   in Loop: Header=BB0_88 Depth=1
	incq	%rax
	addq	$32, %rcx
.LBB0_88:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_90 Depth 2
                                        #       Child Loop BB0_93 Depth 3
	cmpq	$4, %rax
	jg	.LBB0_96
# %bb.89:                               #   in Loop: Header=BB0_88 Depth=1
	movq	%rcx, %rdx
	xorl	%esi, %esi
	jmp	.LBB0_90
	.p2align	4, 0x90
.LBB0_94:                               #   in Loop: Header=BB0_90 Depth=2
	incq	%rsi
	addq	$16, %rdx
.LBB0_90:                               #   Parent Loop BB0_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
	cmpq	$1, %rsi
	jg	.LBB0_95
# %bb.91:                               #   in Loop: Header=BB0_90 Depth=2
	xorl	%edi, %edi
	cmpq	$3, %rdi
	jg	.LBB0_94
	.p2align	4, 0x90
.LBB0_93:                               #   Parent Loop BB0_88 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%r13,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdx,%rdi,4)
	incq	%rdi
	cmpq	$3, %rdi
	jle	.LBB0_93
	jmp	.LBB0_94
.LBB0_96:
	movl	$160, %edi
	callq	malloc@PLT
	movq	%rax, %r12
	xorl	%eax, %eax
	movq	%r12, %rcx
	jmp	.LBB0_97
	.p2align	4, 0x90
.LBB0_104:                              #   in Loop: Header=BB0_97 Depth=1
	incq	%rax
	addq	$32, %rcx
.LBB0_97:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_99 Depth 2
                                        #       Child Loop BB0_102 Depth 3
	cmpq	$4, %rax
	jg	.LBB0_105
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=1
	movq	%rcx, %rdx
	xorl	%esi, %esi
	jmp	.LBB0_99
	.p2align	4, 0x90
.LBB0_103:                              #   in Loop: Header=BB0_99 Depth=2
	incq	%rsi
	addq	$16, %rdx
.LBB0_99:                               #   Parent Loop BB0_97 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_102 Depth 3
	cmpq	$1, %rsi
	jg	.LBB0_104
# %bb.100:                              #   in Loop: Header=BB0_99 Depth=2
	xorl	%edi, %edi
	cmpq	$3, %rdi
	jg	.LBB0_103
	.p2align	4, 0x90
.LBB0_102:                              #   Parent Loop BB0_97 Depth=1
                                        #     Parent Loop BB0_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, (%rdx,%rdi,4)
	incq	%rdi
	cmpq	$3, %rdi
	jle	.LBB0_102
	jmp	.LBB0_103
.LBB0_105:
	xorl	%eax, %eax
	movq	%r12, %rcx
	jmp	.LBB0_106
	.p2align	4, 0x90
.LBB0_113:                              #   in Loop: Header=BB0_106 Depth=1
	incq	%rax
	addq	$32, %rcx
	addq	$32, %r14
	addq	$32, %r15
.LBB0_106:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_108 Depth 2
                                        #       Child Loop BB0_111 Depth 3
	cmpq	$4, %rax
	jg	.LBB0_114
# %bb.107:                              #   in Loop: Header=BB0_106 Depth=1
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%rcx, %rdi
	xorl	%r8d, %r8d
	jmp	.LBB0_108
	.p2align	4, 0x90
.LBB0_112:                              #   in Loop: Header=BB0_108 Depth=2
	incq	%r8
	addq	$16, %rdi
	addq	$16, %rsi
	addq	$16, %rdx
.LBB0_108:                              #   Parent Loop BB0_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
	cmpq	$1, %r8
	jg	.LBB0_113
# %bb.109:                              #   in Loop: Header=BB0_108 Depth=2
	xorl	%r9d, %r9d
	cmpq	$3, %r9
	jg	.LBB0_112
	.p2align	4, 0x90
.LBB0_111:                              #   Parent Loop BB0_106 Depth=1
                                        #     Parent Loop BB0_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%rdx,%r9,4), %xmm0             # xmm0 = mem[0],zero,zero,zero
	addss	(%rsi,%r9,4), %xmm0
	movss	%xmm0, (%rdi,%r9,4)
	incq	%r9
	cmpq	$3, %r9
	jle	.LBB0_111
	jmp	.LBB0_112
.LBB0_114:
	movl	$160, %edi
	callq	malloc@PLT
	xorl	%ecx, %ecx
	jmp	.LBB0_115
	.p2align	4, 0x90
.LBB0_119:                              #   in Loop: Header=BB0_115 Depth=1
	incq	%rcx
	addq	$32, %rax
.LBB0_115:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_118 Depth 2
	cmpq	$4, %rcx
	jg	.LBB0_120
# %bb.116:                              #   in Loop: Header=BB0_115 Depth=1
	xorl	%edx, %edx
	cmpq	$7, %rdx
	jg	.LBB0_119
	.p2align	4, 0x90
.LBB0_118:                              #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$0, (%rax,%rdx,4)
	incq	%rdx
	cmpq	$7, %rdx
	jle	.LBB0_118
	jmp	.LBB0_119
.LBB0_120:
	movq	%r12, 8(%rbx)
	movq	%r12, (%rbx)
	movq	$1, 48(%rbx)
	movq	$8, 40(%rbx)
	movq	$8, 32(%rbx)
	movq	$5, 24(%rbx)
	movq	$0, 16(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	kernel, .Lfunc_end0-kernel
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$120, %edi
	callq	malloc@PLT
	movq	%rax, %r14
	movl	$48, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	$16, %edi
	callq	malloc@PLT
	movq	%rsp, %rdi
	movl	$5, %r8d
	movl	$3, %r9d
	movq	%r14, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	pushq	$6
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	callq	kernel@PLT
	addq	$184, %rsp
	.cfi_adjust_cfa_offset -184
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.Lconst_0,@object               # @const_0
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.Lconst_0:
	.quad	5                               # 0x5
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.size	.Lconst_0, 24

	.type	.Lconst_1,@object               # @const_1
	.p2align	3, 0x0
.Lconst_1:
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.size	.Lconst_1, 16

	.section	".note.GNU-stack","",@progbits
