
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000000848 <_init>:
 848:	48 83 ec 08          	sub    $0x8,%rsp
 84c:	48 8b 05 95 17 20 00 	mov    0x201795(%rip),%rax        # 201fe8 <__gmon_start__>
 853:	48 85 c0             	test   %rax,%rax
 856:	74 02                	je     85a <_init+0x12>
 858:	ff d0                	callq  *%rax
 85a:	48 83 c4 08          	add    $0x8,%rsp
 85e:	c3                   	retq   

Disassembly of section .plt:

0000000000000860 <.plt>:
 860:	ff 35 1a 17 20 00    	pushq  0x20171a(%rip)        # 201f80 <_GLOBAL_OFFSET_TABLE_+0x8>
 866:	ff 25 1c 17 20 00    	jmpq   *0x20171c(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x10>
 86c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000870 <_ZNSirsERi@plt>:
 870:	ff 25 1a 17 20 00    	jmpq   *0x20171a(%rip)        # 201f90 <_ZNSirsERi@GLIBCXX_3.4>
 876:	68 00 00 00 00       	pushq  $0x0
 87b:	e9 e0 ff ff ff       	jmpq   860 <.plt>

0000000000000880 <__cxa_atexit@plt>:
 880:	ff 25 12 17 20 00    	jmpq   *0x201712(%rip)        # 201f98 <__cxa_atexit@GLIBC_2.2.5>
 886:	68 01 00 00 00       	pushq  $0x1
 88b:	e9 d0 ff ff ff       	jmpq   860 <.plt>

0000000000000890 <_ZNSolsEPFRSoS_E@plt>:
 890:	ff 25 0a 17 20 00    	jmpq   *0x20170a(%rip)        # 201fa0 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
 896:	68 02 00 00 00       	pushq  $0x2
 89b:	e9 c0 ff ff ff       	jmpq   860 <.plt>

00000000000008a0 <__stack_chk_fail@plt>:
 8a0:	ff 25 02 17 20 00    	jmpq   *0x201702(%rip)        # 201fa8 <__stack_chk_fail@GLIBC_2.4>
 8a6:	68 03 00 00 00       	pushq  $0x3
 8ab:	e9 b0 ff ff ff       	jmpq   860 <.plt>

00000000000008b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>:
 8b0:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201fb0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@GLIBCXX_3.4>
 8b6:	68 04 00 00 00       	pushq  $0x4
 8bb:	e9 a0 ff ff ff       	jmpq   860 <.plt>

00000000000008c0 <_ZNSt8ios_base4InitC1Ev@plt>:
 8c0:	ff 25 f2 16 20 00    	jmpq   *0x2016f2(%rip)        # 201fb8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 8c6:	68 05 00 00 00       	pushq  $0x5
 8cb:	e9 90 ff ff ff       	jmpq   860 <.plt>

00000000000008d0 <_ZNSolsEi@plt>:
 8d0:	ff 25 ea 16 20 00    	jmpq   *0x2016ea(%rip)        # 201fc0 <_ZNSolsEi@GLIBCXX_3.4>
 8d6:	68 06 00 00 00       	pushq  $0x6
 8db:	e9 80 ff ff ff       	jmpq   860 <.plt>

Disassembly of section .plt.got:

00000000000008e0 <__cxa_finalize@plt>:
 8e0:	ff 25 e2 16 20 00    	jmpq   *0x2016e2(%rip)        # 201fc8 <__cxa_finalize@GLIBC_2.2.5>
 8e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000008f0 <_start>:
 8f0:	31 ed                	xor    %ebp,%ebp
 8f2:	49 89 d1             	mov    %rdx,%r9
 8f5:	5e                   	pop    %rsi
 8f6:	48 89 e2             	mov    %rsp,%rdx
 8f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8fd:	50                   	push   %rax
 8fe:	54                   	push   %rsp
 8ff:	4c 8d 05 aa 04 00 00 	lea    0x4aa(%rip),%r8        # db0 <__libc_csu_fini>
 906:	48 8d 0d 33 04 00 00 	lea    0x433(%rip),%rcx        # d40 <__libc_csu_init>
 90d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 9fa <main>
 914:	ff 15 c6 16 20 00    	callq  *0x2016c6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 91a:	f4                   	hlt    
 91b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000920 <deregister_tm_clones>:
 920:	48 8d 3d e9 16 20 00 	lea    0x2016e9(%rip),%rdi        # 202010 <__TMC_END__>
 927:	55                   	push   %rbp
 928:	48 8d 05 e1 16 20 00 	lea    0x2016e1(%rip),%rax        # 202010 <__TMC_END__>
 92f:	48 39 f8             	cmp    %rdi,%rax
 932:	48 89 e5             	mov    %rsp,%rbp
 935:	74 19                	je     950 <deregister_tm_clones+0x30>
 937:	48 8b 05 9a 16 20 00 	mov    0x20169a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 93e:	48 85 c0             	test   %rax,%rax
 941:	74 0d                	je     950 <deregister_tm_clones+0x30>
 943:	5d                   	pop    %rbp
 944:	ff e0                	jmpq   *%rax
 946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 94d:	00 00 00 
 950:	5d                   	pop    %rbp
 951:	c3                   	retq   
 952:	0f 1f 40 00          	nopl   0x0(%rax)
 956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 95d:	00 00 00 

0000000000000960 <register_tm_clones>:
 960:	48 8d 3d a9 16 20 00 	lea    0x2016a9(%rip),%rdi        # 202010 <__TMC_END__>
 967:	48 8d 35 a2 16 20 00 	lea    0x2016a2(%rip),%rsi        # 202010 <__TMC_END__>
 96e:	55                   	push   %rbp
 96f:	48 29 fe             	sub    %rdi,%rsi
 972:	48 89 e5             	mov    %rsp,%rbp
 975:	48 c1 fe 03          	sar    $0x3,%rsi
 979:	48 89 f0             	mov    %rsi,%rax
 97c:	48 c1 e8 3f          	shr    $0x3f,%rax
 980:	48 01 c6             	add    %rax,%rsi
 983:	48 d1 fe             	sar    %rsi
 986:	74 18                	je     9a0 <register_tm_clones+0x40>
 988:	48 8b 05 61 16 20 00 	mov    0x201661(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 98f:	48 85 c0             	test   %rax,%rax
 992:	74 0c                	je     9a0 <register_tm_clones+0x40>
 994:	5d                   	pop    %rbp
 995:	ff e0                	jmpq   *%rax
 997:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 99e:	00 00 
 9a0:	5d                   	pop    %rbp
 9a1:	c3                   	retq   
 9a2:	0f 1f 40 00          	nopl   0x0(%rax)
 9a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ad:	00 00 00 

00000000000009b0 <__do_global_dtors_aux>:
 9b0:	80 3d a1 18 20 00 00 	cmpb   $0x0,0x2018a1(%rip)        # 202258 <completed.7698>
 9b7:	75 2f                	jne    9e8 <__do_global_dtors_aux+0x38>
 9b9:	48 83 3d 07 16 20 00 	cmpq   $0x0,0x201607(%rip)        # 201fc8 <__cxa_finalize@GLIBC_2.2.5>
 9c0:	00 
 9c1:	55                   	push   %rbp
 9c2:	48 89 e5             	mov    %rsp,%rbp
 9c5:	74 0c                	je     9d3 <__do_global_dtors_aux+0x23>
 9c7:	48 8b 3d 3a 16 20 00 	mov    0x20163a(%rip),%rdi        # 202008 <__dso_handle>
 9ce:	e8 0d ff ff ff       	callq  8e0 <__cxa_finalize@plt>
 9d3:	e8 48 ff ff ff       	callq  920 <deregister_tm_clones>
 9d8:	c6 05 79 18 20 00 01 	movb   $0x1,0x201879(%rip)        # 202258 <completed.7698>
 9df:	5d                   	pop    %rbp
 9e0:	c3                   	retq   
 9e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9e8:	f3 c3                	repz retq 
 9ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009f0 <frame_dummy>:
 9f0:	55                   	push   %rbp
 9f1:	48 89 e5             	mov    %rsp,%rbp
 9f4:	5d                   	pop    %rbp
 9f5:	e9 66 ff ff ff       	jmpq   960 <register_tm_clones>

00000000000009fa <main>:
 9fa:	55                   	push   %rbp
 9fb:	48 89 e5             	mov    %rsp,%rbp
 9fe:	41 57                	push   %r15
 a00:	41 56                	push   %r14
 a02:	41 55                	push   %r13
 a04:	41 54                	push   %r12
 a06:	53                   	push   %rbx
 a07:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
 a0e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 a15:	00 00 
 a17:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 a1b:	31 c0                	xor    %eax,%eax
 a1d:	48 89 e0             	mov    %rsp,%rax
 a20:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
 a27:	48 8d 45 8c          	lea    -0x74(%rbp),%rax
 a2b:	48 89 c6             	mov    %rax,%rsi
 a2e:	48 8d 3d 0b 17 20 00 	lea    0x20170b(%rip),%rdi        # 202140 <_ZSt3cin@@GLIBCXX_3.4>
 a35:	e8 36 fe ff ff       	callq  870 <_ZNSirsERi@plt>
 a3a:	48 89 c2             	mov    %rax,%rdx
 a3d:	48 8d 45 90          	lea    -0x70(%rbp),%rax
 a41:	48 89 c6             	mov    %rax,%rsi
 a44:	48 89 d7             	mov    %rdx,%rdi
 a47:	e8 24 fe ff ff       	callq  870 <_ZNSirsERi@plt>
 a4c:	8b 45 90             	mov    -0x70(%rbp),%eax
 a4f:	48 98                	cltq   
 a51:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
 a55:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
 a59:	48 89 c8             	mov    %rcx,%rax
 a5c:	48 83 c0 01          	add    $0x1,%rax
 a60:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
 a67:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
 a6e:	00 00 00 00 
 a72:	48 89 c8             	mov    %rcx,%rax
 a75:	48 83 c0 01          	add    $0x1,%rax
 a79:	48 8d 1c 85 00 00 00 	lea    0x0(,%rax,4),%rbx
 a80:	00 
 a81:	8b 45 8c             	mov    -0x74(%rbp),%eax
 a84:	48 98                	cltq   
 a86:	48 8d 70 ff          	lea    -0x1(%rax),%rsi
 a8a:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
 a8e:	48 89 c8             	mov    %rcx,%rax
 a91:	48 83 c0 01          	add    $0x1,%rax
 a95:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
 a9c:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
 aa3:	00 00 00 00 
 aa7:	48 89 f0             	mov    %rsi,%rax
 aaa:	48 83 c0 01          	add    $0x1,%rax
 aae:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
 ab5:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
 abc:	00 00 00 00 
 ac0:	4c 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%r8
 ac7:	4c 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9
 ace:	4c 89 ca             	mov    %r9,%rdx
 ad1:	4c 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%r10
 ad8:	4c 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11
 adf:	49 0f af d2          	imul   %r10,%rdx
 ae3:	4c 89 d8             	mov    %r11,%rax
 ae6:	49 0f af c0          	imul   %r8,%rax
 aea:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
 aee:	4c 89 c0             	mov    %r8,%rax
 af1:	49 f7 e2             	mul    %r10
 af4:	48 01 d7             	add    %rdx,%rdi
 af7:	48 89 fa             	mov    %rdi,%rdx
 afa:	48 89 c8             	mov    %rcx,%rax
 afd:	48 83 c0 01          	add    $0x1,%rax
 b01:	49 89 c6             	mov    %rax,%r14
 b04:	41 bf 00 00 00 00    	mov    $0x0,%r15d
 b0a:	48 89 f0             	mov    %rsi,%rax
 b0d:	48 83 c0 01          	add    $0x1,%rax
 b11:	49 89 c4             	mov    %rax,%r12
 b14:	41 bd 00 00 00 00    	mov    $0x0,%r13d
 b1a:	4c 89 fa             	mov    %r15,%rdx
 b1d:	49 0f af d4          	imul   %r12,%rdx
 b21:	4c 89 e8             	mov    %r13,%rax
 b24:	49 0f af c6          	imul   %r14,%rax
 b28:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
 b2c:	4c 89 f0             	mov    %r14,%rax
 b2f:	49 f7 e4             	mul    %r12
 b32:	48 01 d7             	add    %rdx,%rdi
 b35:	48 89 fa             	mov    %rdi,%rdx
 b38:	48 89 c8             	mov    %rcx,%rax
 b3b:	48 8d 50 01          	lea    0x1(%rax),%rdx
 b3f:	48 89 f0             	mov    %rsi,%rax
 b42:	48 83 c0 01          	add    $0x1,%rax
 b46:	48 0f af c2          	imul   %rdx,%rax
 b4a:	48 c1 e0 02          	shl    $0x2,%rax
 b4e:	48 8d 50 03          	lea    0x3(%rax),%rdx
 b52:	b8 10 00 00 00       	mov    $0x10,%eax
 b57:	48 83 e8 01          	sub    $0x1,%rax
 b5b:	48 01 d0             	add    %rdx,%rax
 b5e:	b9 10 00 00 00       	mov    $0x10,%ecx
 b63:	ba 00 00 00 00       	mov    $0x0,%edx
 b68:	48 f7 f1             	div    %rcx
 b6b:	48 6b c0 10          	imul   $0x10,%rax,%rax
 b6f:	48 29 c4             	sub    %rax,%rsp
 b72:	48 89 e0             	mov    %rsp,%rax
 b75:	48 83 c0 03          	add    $0x3,%rax
 b79:	48 c1 e8 02          	shr    $0x2,%rax
 b7d:	48 c1 e0 02          	shl    $0x2,%rax
 b81:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 b85:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
 b8c:	8b 45 8c             	mov    -0x74(%rbp),%eax
 b8f:	39 45 a4             	cmp    %eax,-0x5c(%rbp)
 b92:	7d 4b                	jge    bdf <main+0x1e5>
 b94:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
 b9b:	8b 45 90             	mov    -0x70(%rbp),%eax
 b9e:	39 45 a0             	cmp    %eax,-0x60(%rbp)
 ba1:	7d 36                	jge    bd9 <main+0x1df>
 ba3:	8b 45 90             	mov    -0x70(%rbp),%eax
 ba6:	0f af 45 a4          	imul   -0x5c(%rbp),%eax
 baa:	89 c2                	mov    %eax,%edx
 bac:	48 89 df             	mov    %rbx,%rdi
 baf:	48 c1 ef 02          	shr    $0x2,%rdi
 bb3:	8b 45 a0             	mov    -0x60(%rbp),%eax
 bb6:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
 bb9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 bbd:	8b 55 a0             	mov    -0x60(%rbp),%edx
 bc0:	48 63 f2             	movslq %edx,%rsi
 bc3:	8b 55 a4             	mov    -0x5c(%rbp),%edx
 bc6:	48 63 d2             	movslq %edx,%rdx
 bc9:	48 0f af d7          	imul   %rdi,%rdx
 bcd:	48 01 f2             	add    %rsi,%rdx
 bd0:	89 0c 90             	mov    %ecx,(%rax,%rdx,4)
 bd3:	83 45 a0 01          	addl   $0x1,-0x60(%rbp)
 bd7:	eb c2                	jmp    b9b <main+0x1a1>
 bd9:	83 45 a4 01          	addl   $0x1,-0x5c(%rbp)
 bdd:	eb ad                	jmp    b8c <main+0x192>
 bdf:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
 be6:	8b 45 8c             	mov    -0x74(%rbp),%eax
 be9:	39 45 9c             	cmp    %eax,-0x64(%rbp)
 bec:	7d 6d                	jge    c5b <main+0x261>
 bee:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
 bf5:	8b 45 90             	mov    -0x70(%rbp),%eax
 bf8:	39 45 98             	cmp    %eax,-0x68(%rbp)
 bfb:	7d 42                	jge    c3f <main+0x245>
 bfd:	48 89 de             	mov    %rbx,%rsi
 c00:	48 c1 ee 02          	shr    $0x2,%rsi
 c04:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 c08:	8b 55 98             	mov    -0x68(%rbp),%edx
 c0b:	48 63 ca             	movslq %edx,%rcx
 c0e:	8b 55 9c             	mov    -0x64(%rbp),%edx
 c11:	48 63 d2             	movslq %edx,%rdx
 c14:	48 0f af d6          	imul   %rsi,%rdx
 c18:	48 01 ca             	add    %rcx,%rdx
 c1b:	8b 04 90             	mov    (%rax,%rdx,4),%eax
 c1e:	89 c6                	mov    %eax,%esi
 c20:	48 8d 3d f9 13 20 00 	lea    0x2013f9(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 c27:	e8 a4 fc ff ff       	callq  8d0 <_ZNSolsEi@plt>
 c2c:	be 09 00 00 00       	mov    $0x9,%esi
 c31:	48 89 c7             	mov    %rax,%rdi
 c34:	e8 77 fc ff ff       	callq  8b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
 c39:	83 45 98 01          	addl   $0x1,-0x68(%rbp)
 c3d:	eb b6                	jmp    bf5 <main+0x1fb>
 c3f:	48 8b 05 8a 13 20 00 	mov    0x20138a(%rip),%rax        # 201fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
 c46:	48 89 c6             	mov    %rax,%rsi
 c49:	48 8d 3d d0 13 20 00 	lea    0x2013d0(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 c50:	e8 3b fc ff ff       	callq  890 <_ZNSolsEPFRSoS_E@plt>
 c55:	83 45 9c 01          	addl   $0x1,-0x64(%rbp)
 c59:	eb 8b                	jmp    be6 <main+0x1ec>
 c5b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 c5f:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 c63:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%rbp)
 c6a:	8b 55 90             	mov    -0x70(%rbp),%edx
 c6d:	8b 45 8c             	mov    -0x74(%rbp),%eax
 c70:	0f af c2             	imul   %edx,%eax
 c73:	39 45 94             	cmp    %eax,-0x6c(%rbp)
 c76:	7d 37                	jge    caf <main+0x2b5>
 c78:	8b 45 94             	mov    -0x6c(%rbp),%eax
 c7b:	48 98                	cltq   
 c7d:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 c84:	00 
 c85:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 c89:	48 01 d0             	add    %rdx,%rax
 c8c:	8b 00                	mov    (%rax),%eax
 c8e:	89 c6                	mov    %eax,%esi
 c90:	48 8d 3d 89 13 20 00 	lea    0x201389(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 c97:	e8 34 fc ff ff       	callq  8d0 <_ZNSolsEi@plt>
 c9c:	be 20 00 00 00       	mov    $0x20,%esi
 ca1:	48 89 c7             	mov    %rax,%rdi
 ca4:	e8 07 fc ff ff       	callq  8b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
 ca9:	83 45 94 01          	addl   $0x1,-0x6c(%rbp)
 cad:	eb bb                	jmp    c6a <main+0x270>
 caf:	b8 00 00 00 00       	mov    $0x0,%eax
 cb4:	48 8b a5 48 ff ff ff 	mov    -0xb8(%rbp),%rsp
 cbb:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
 cbf:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
 cc6:	00 00 
 cc8:	74 05                	je     ccf <main+0x2d5>
 cca:	e8 d1 fb ff ff       	callq  8a0 <__stack_chk_fail@plt>
 ccf:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 cd3:	5b                   	pop    %rbx
 cd4:	41 5c                	pop    %r12
 cd6:	41 5d                	pop    %r13
 cd8:	41 5e                	pop    %r14
 cda:	41 5f                	pop    %r15
 cdc:	5d                   	pop    %rbp
 cdd:	c3                   	retq   

0000000000000cde <_Z41__static_initialization_and_destruction_0ii>:
 cde:	55                   	push   %rbp
 cdf:	48 89 e5             	mov    %rsp,%rbp
 ce2:	48 83 ec 10          	sub    $0x10,%rsp
 ce6:	89 7d fc             	mov    %edi,-0x4(%rbp)
 ce9:	89 75 f8             	mov    %esi,-0x8(%rbp)
 cec:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
 cf0:	75 32                	jne    d24 <_Z41__static_initialization_and_destruction_0ii+0x46>
 cf2:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
 cf9:	75 29                	jne    d24 <_Z41__static_initialization_and_destruction_0ii+0x46>
 cfb:	48 8d 3d 57 15 20 00 	lea    0x201557(%rip),%rdi        # 202259 <_ZStL8__ioinit>
 d02:	e8 b9 fb ff ff       	callq  8c0 <_ZNSt8ios_base4InitC1Ev@plt>
 d07:	48 8d 15 fa 12 20 00 	lea    0x2012fa(%rip),%rdx        # 202008 <__dso_handle>
 d0e:	48 8d 35 44 15 20 00 	lea    0x201544(%rip),%rsi        # 202259 <_ZStL8__ioinit>
 d15:	48 8b 05 dc 12 20 00 	mov    0x2012dc(%rip),%rax        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
 d1c:	48 89 c7             	mov    %rax,%rdi
 d1f:	e8 5c fb ff ff       	callq  880 <__cxa_atexit@plt>
 d24:	90                   	nop
 d25:	c9                   	leaveq 
 d26:	c3                   	retq   

0000000000000d27 <_GLOBAL__sub_I_main>:
 d27:	55                   	push   %rbp
 d28:	48 89 e5             	mov    %rsp,%rbp
 d2b:	be ff ff 00 00       	mov    $0xffff,%esi
 d30:	bf 01 00 00 00       	mov    $0x1,%edi
 d35:	e8 a4 ff ff ff       	callq  cde <_Z41__static_initialization_and_destruction_0ii>
 d3a:	5d                   	pop    %rbp
 d3b:	c3                   	retq   
 d3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000d40 <__libc_csu_init>:
 d40:	41 57                	push   %r15
 d42:	41 56                	push   %r14
 d44:	49 89 d7             	mov    %rdx,%r15
 d47:	41 55                	push   %r13
 d49:	41 54                	push   %r12
 d4b:	4c 8d 25 0e 10 20 00 	lea    0x20100e(%rip),%r12        # 201d60 <__frame_dummy_init_array_entry>
 d52:	55                   	push   %rbp
 d53:	48 8d 2d 16 10 20 00 	lea    0x201016(%rip),%rbp        # 201d70 <__init_array_end>
 d5a:	53                   	push   %rbx
 d5b:	41 89 fd             	mov    %edi,%r13d
 d5e:	49 89 f6             	mov    %rsi,%r14
 d61:	4c 29 e5             	sub    %r12,%rbp
 d64:	48 83 ec 08          	sub    $0x8,%rsp
 d68:	48 c1 fd 03          	sar    $0x3,%rbp
 d6c:	e8 d7 fa ff ff       	callq  848 <_init>
 d71:	48 85 ed             	test   %rbp,%rbp
 d74:	74 20                	je     d96 <__libc_csu_init+0x56>
 d76:	31 db                	xor    %ebx,%ebx
 d78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 d7f:	00 
 d80:	4c 89 fa             	mov    %r15,%rdx
 d83:	4c 89 f6             	mov    %r14,%rsi
 d86:	44 89 ef             	mov    %r13d,%edi
 d89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 d8d:	48 83 c3 01          	add    $0x1,%rbx
 d91:	48 39 dd             	cmp    %rbx,%rbp
 d94:	75 ea                	jne    d80 <__libc_csu_init+0x40>
 d96:	48 83 c4 08          	add    $0x8,%rsp
 d9a:	5b                   	pop    %rbx
 d9b:	5d                   	pop    %rbp
 d9c:	41 5c                	pop    %r12
 d9e:	41 5d                	pop    %r13
 da0:	41 5e                	pop    %r14
 da2:	41 5f                	pop    %r15
 da4:	c3                   	retq   
 da5:	90                   	nop
 da6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 dad:	00 00 00 

0000000000000db0 <__libc_csu_fini>:
 db0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000db4 <_fini>:
 db4:	48 83 ec 08          	sub    $0x8,%rsp
 db8:	48 83 c4 08          	add    $0x8,%rsp
 dbc:	c3                   	retq   
