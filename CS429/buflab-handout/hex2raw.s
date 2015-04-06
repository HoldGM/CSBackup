
hex2raw:     file format elf64-x86-64


Disassembly of section .init:

0000000000400768 <_init>:
  400768:	48 83 ec 08          	sub    $0x8,%rsp
  40076c:	48 8b 05 85 18 20 00 	mov    0x201885(%rip),%rax        # 601ff8 <_DYNAMIC+0x1d0>
  400773:	48 85 c0             	test   %rax,%rax
  400776:	74 05                	je     40077d <_init+0x15>
  400778:	e8 83 00 00 00       	callq  400800 <__gmon_start__@plt>
  40077d:	48 83 c4 08          	add    $0x8,%rsp
  400781:	c3                   	retq   

Disassembly of section .plt:

0000000000400790 <free@plt-0x10>:
  400790:	ff 35 72 18 20 00    	pushq  0x201872(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400796:	ff 25 74 18 20 00    	jmpq   *0x201874(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40079c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004007a0 <free@plt>:
  4007a0:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4007a6:	68 00 00 00 00       	pushq  $0x0
  4007ab:	e9 e0 ff ff ff       	jmpq   400790 <_init+0x28>

00000000004007b0 <__isoc99_fscanf@plt>:
  4007b0:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4007b6:	68 01 00 00 00       	pushq  $0x1
  4007bb:	e9 d0 ff ff ff       	jmpq   400790 <_init+0x28>

00000000004007c0 <puts@plt>:
  4007c0:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4007c6:	68 02 00 00 00       	pushq  $0x2
  4007cb:	e9 c0 ff ff ff       	jmpq   400790 <_init+0x28>

00000000004007d0 <write@plt>:
  4007d0:	ff 25 5a 18 20 00    	jmpq   *0x20185a(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4007d6:	68 03 00 00 00       	pushq  $0x3
  4007db:	e9 b0 ff ff ff       	jmpq   400790 <_init+0x28>

00000000004007e0 <__stack_chk_fail@plt>:
  4007e0:	ff 25 52 18 20 00    	jmpq   *0x201852(%rip)        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4007e6:	68 04 00 00 00       	pushq  $0x4
  4007eb:	e9 a0 ff ff ff       	jmpq   400790 <_init+0x28>

00000000004007f0 <__libc_start_main@plt>:
  4007f0:	ff 25 4a 18 20 00    	jmpq   *0x20184a(%rip)        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  4007f6:	68 05 00 00 00       	pushq  $0x5
  4007fb:	e9 90 ff ff ff       	jmpq   400790 <_init+0x28>

0000000000400800 <__gmon_start__@plt>:
  400800:	ff 25 42 18 20 00    	jmpq   *0x201842(%rip)        # 602048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400806:	68 06 00 00 00       	pushq  $0x6
  40080b:	e9 80 ff ff ff       	jmpq   400790 <_init+0x28>

0000000000400810 <malloc@plt>:
  400810:	ff 25 3a 18 20 00    	jmpq   *0x20183a(%rip)        # 602050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400816:	68 07 00 00 00       	pushq  $0x7
  40081b:	e9 70 ff ff ff       	jmpq   400790 <_init+0x28>

0000000000400820 <__isoc99_sscanf@plt>:
  400820:	ff 25 32 18 20 00    	jmpq   *0x201832(%rip)        # 602058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400826:	68 08 00 00 00       	pushq  $0x8
  40082b:	e9 60 ff ff ff       	jmpq   400790 <_init+0x28>

0000000000400830 <realloc@plt>:
  400830:	ff 25 2a 18 20 00    	jmpq   *0x20182a(%rip)        # 602060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400836:	68 09 00 00 00       	pushq  $0x9
  40083b:	e9 50 ff ff ff       	jmpq   400790 <_init+0x28>

0000000000400840 <__printf_chk@plt>:
  400840:	ff 25 22 18 20 00    	jmpq   *0x201822(%rip)        # 602068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400846:	68 0a 00 00 00       	pushq  $0xa
  40084b:	e9 40 ff ff ff       	jmpq   400790 <_init+0x28>

0000000000400850 <getopt@plt>:
  400850:	ff 25 1a 18 20 00    	jmpq   *0x20181a(%rip)        # 602070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400856:	68 0b 00 00 00       	pushq  $0xb
  40085b:	e9 30 ff ff ff       	jmpq   400790 <_init+0x28>

0000000000400860 <__fprintf_chk@plt>:
  400860:	ff 25 12 18 20 00    	jmpq   *0x201812(%rip)        # 602078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400866:	68 0c 00 00 00       	pushq  $0xc
  40086b:	e9 20 ff ff ff       	jmpq   400790 <_init+0x28>

0000000000400870 <__ctype_b_loc@plt>:
  400870:	ff 25 0a 18 20 00    	jmpq   *0x20180a(%rip)        # 602080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400876:	68 0d 00 00 00       	pushq  $0xd
  40087b:	e9 10 ff ff ff       	jmpq   400790 <_init+0x28>

Disassembly of section .text:

0000000000400880 <_start>:
  400880:	31 ed                	xor    %ebp,%ebp
  400882:	49 89 d1             	mov    %rdx,%r9
  400885:	5e                   	pop    %rsi
  400886:	48 89 e2             	mov    %rsp,%rdx
  400889:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40088d:	50                   	push   %rax
  40088e:	54                   	push   %rsp
  40088f:	49 c7 c0 f0 0c 40 00 	mov    $0x400cf0,%r8
  400896:	48 c7 c1 80 0c 40 00 	mov    $0x400c80,%rcx
  40089d:	48 c7 c7 8f 0b 40 00 	mov    $0x400b8f,%rdi
  4008a4:	e8 47 ff ff ff       	callq  4007f0 <__libc_start_main@plt>
  4008a9:	f4                   	hlt    
  4008aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004008b0 <deregister_tm_clones>:
  4008b0:	b8 9f 20 60 00       	mov    $0x60209f,%eax
  4008b5:	55                   	push   %rbp
  4008b6:	48 2d 98 20 60 00    	sub    $0x602098,%rax
  4008bc:	48 83 f8 0e          	cmp    $0xe,%rax
  4008c0:	48 89 e5             	mov    %rsp,%rbp
  4008c3:	76 1b                	jbe    4008e0 <deregister_tm_clones+0x30>
  4008c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4008ca:	48 85 c0             	test   %rax,%rax
  4008cd:	74 11                	je     4008e0 <deregister_tm_clones+0x30>
  4008cf:	5d                   	pop    %rbp
  4008d0:	bf 98 20 60 00       	mov    $0x602098,%edi
  4008d5:	ff e0                	jmpq   *%rax
  4008d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4008de:	00 00 
  4008e0:	5d                   	pop    %rbp
  4008e1:	c3                   	retq   
  4008e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4008e9:	1f 84 00 00 00 00 00 

00000000004008f0 <register_tm_clones>:
  4008f0:	be 98 20 60 00       	mov    $0x602098,%esi
  4008f5:	55                   	push   %rbp
  4008f6:	48 81 ee 98 20 60 00 	sub    $0x602098,%rsi
  4008fd:	48 c1 fe 03          	sar    $0x3,%rsi
  400901:	48 89 e5             	mov    %rsp,%rbp
  400904:	48 89 f0             	mov    %rsi,%rax
  400907:	48 c1 e8 3f          	shr    $0x3f,%rax
  40090b:	48 01 c6             	add    %rax,%rsi
  40090e:	48 d1 fe             	sar    %rsi
  400911:	74 15                	je     400928 <register_tm_clones+0x38>
  400913:	b8 00 00 00 00       	mov    $0x0,%eax
  400918:	48 85 c0             	test   %rax,%rax
  40091b:	74 0b                	je     400928 <register_tm_clones+0x38>
  40091d:	5d                   	pop    %rbp
  40091e:	bf 98 20 60 00       	mov    $0x602098,%edi
  400923:	ff e0                	jmpq   *%rax
  400925:	0f 1f 00             	nopl   (%rax)
  400928:	5d                   	pop    %rbp
  400929:	c3                   	retq   
  40092a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400930 <__do_global_dtors_aux>:
  400930:	80 3d 71 17 20 00 00 	cmpb   $0x0,0x201771(%rip)        # 6020a8 <completed.7259>
  400937:	75 11                	jne    40094a <__do_global_dtors_aux+0x1a>
  400939:	55                   	push   %rbp
  40093a:	48 89 e5             	mov    %rsp,%rbp
  40093d:	e8 6e ff ff ff       	callq  4008b0 <deregister_tm_clones>
  400942:	5d                   	pop    %rbp
  400943:	c6 05 5e 17 20 00 01 	movb   $0x1,0x20175e(%rip)        # 6020a8 <completed.7259>
  40094a:	f3 c3                	repz retq 
  40094c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400950 <frame_dummy>:
  400950:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  400955:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400959:	75 05                	jne    400960 <frame_dummy+0x10>
  40095b:	eb 93                	jmp    4008f0 <register_tm_clones>
  40095d:	0f 1f 00             	nopl   (%rax)
  400960:	b8 00 00 00 00       	mov    $0x0,%eax
  400965:	48 85 c0             	test   %rax,%rax
  400968:	74 f1                	je     40095b <frame_dummy+0xb>
  40096a:	55                   	push   %rbp
  40096b:	48 89 e5             	mov    %rsp,%rbp
  40096e:	ff d0                	callq  *%rax
  400970:	5d                   	pop    %rbp
  400971:	e9 7a ff ff ff       	jmpq   4008f0 <register_tm_clones>

0000000000400976 <usage>:
  400976:	48 83 ec 08          	sub    $0x8,%rsp
  40097a:	48 89 fa             	mov    %rdi,%rdx
  40097d:	be 04 0d 40 00       	mov    $0x400d04,%esi
  400982:	bf 01 00 00 00       	mov    $0x1,%edi
  400987:	b8 00 00 00 00       	mov    $0x0,%eax
  40098c:	e8 af fe ff ff       	callq  400840 <__printf_chk@plt>
  400991:	bf 19 0d 40 00       	mov    $0x400d19,%edi
  400996:	e8 25 fe ff ff       	callq  4007c0 <puts@plt>
  40099b:	bf 28 0d 40 00       	mov    $0x400d28,%edi
  4009a0:	e8 1b fe ff ff       	callq  4007c0 <puts@plt>
  4009a5:	48 83 c4 08          	add    $0x8,%rsp
  4009a9:	c3                   	retq   

00000000004009aa <convert_to_hex_value>:
  4009aa:	48 83 ec 18          	sub    $0x18,%rsp
  4009ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4009b5:	00 00 
  4009b7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4009bc:	31 c0                	xor    %eax,%eax
  4009be:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  4009c3:	be 44 0d 40 00       	mov    $0x400d44,%esi
  4009c8:	e8 53 fe ff ff       	callq  400820 <__isoc99_sscanf@plt>
  4009cd:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
  4009d2:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4009d7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4009de:	00 00 
  4009e0:	74 05                	je     4009e7 <convert_to_hex_value+0x3d>
  4009e2:	e8 f9 fd ff ff       	callq  4007e0 <__stack_chk_fail@plt>
  4009e7:	48 83 c4 18          	add    $0x18,%rsp
  4009eb:	c3                   	retq   

00000000004009ec <convert_to_byte_string>:
  4009ec:	55                   	push   %rbp
  4009ed:	48 89 e5             	mov    %rsp,%rbp
  4009f0:	41 57                	push   %r15
  4009f2:	41 56                	push   %r14
  4009f4:	41 55                	push   %r13
  4009f6:	41 54                	push   %r12
  4009f8:	53                   	push   %rbx
  4009f9:	48 83 ec 28          	sub    $0x28,%rsp
  4009fd:	49 89 fe             	mov    %rdi,%r14
  400a00:	48 89 75 b8          	mov    %rsi,-0x48(%rbp)
  400a04:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  400a0b:	bf 00 04 00 00       	mov    $0x400,%edi
  400a10:	e8 fb fd ff ff       	callq  400810 <malloc@plt>
  400a15:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  400a19:	48 85 c0             	test   %rax,%rax
  400a1c:	0f 84 52 01 00 00    	je     400b74 <convert_to_byte_string+0x188>
  400a22:	48 89 e3             	mov    %rsp,%rbx
  400a25:	41 bf 00 00 00 00    	mov    $0x0,%r15d
  400a2b:	c7 45 c4 00 04 00 00 	movl   $0x400,-0x3c(%rbp)
  400a32:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  400a38:	e9 0d 01 00 00       	jmpq   400b4a <convert_to_byte_string+0x15e>
  400a3d:	44 0f b6 23          	movzbl (%rbx),%r12d
  400a41:	41 0f b6 c4          	movzbl %r12b,%eax
  400a45:	83 f8 2f             	cmp    $0x2f,%eax
  400a48:	75 15                	jne    400a5f <convert_to_byte_string+0x73>
  400a4a:	80 7b 01 2a          	cmpb   $0x2a,0x1(%rbx)
  400a4e:	75 61                	jne    400ab1 <convert_to_byte_string+0xc5>
  400a50:	80 7b 02 00          	cmpb   $0x0,0x2(%rbx)
  400a54:	75 5b                	jne    400ab1 <convert_to_byte_string+0xc5>
  400a56:	41 83 c5 01          	add    $0x1,%r13d
  400a5a:	e9 eb 00 00 00       	jmpq   400b4a <convert_to_byte_string+0x15e>
  400a5f:	83 f8 2a             	cmp    $0x2a,%eax
  400a62:	75 4d                	jne    400ab1 <convert_to_byte_string+0xc5>
  400a64:	80 7b 01 2f          	cmpb   $0x2f,0x1(%rbx)
  400a68:	75 47                	jne    400ab1 <convert_to_byte_string+0xc5>
  400a6a:	80 7b 02 00          	cmpb   $0x0,0x2(%rbx)
  400a6e:	75 41                	jne    400ab1 <convert_to_byte_string+0xc5>
  400a70:	45 85 ed             	test   %r13d,%r13d
  400a73:	7f 33                	jg     400aa8 <convert_to_byte_string+0xbc>
  400a75:	b9 47 0d 40 00       	mov    $0x400d47,%ecx
  400a7a:	ba 4a 0d 40 00       	mov    $0x400d4a,%edx
  400a7f:	be 01 00 00 00       	mov    $0x1,%esi
  400a84:	48 8b 3d 15 16 20 00 	mov    0x201615(%rip),%rdi        # 6020a0 <stderr@@GLIBC_2.2.5>
  400a8b:	b8 00 00 00 00       	mov    $0x0,%eax
  400a90:	e8 cb fd ff ff       	callq  400860 <__fprintf_chk@plt>
  400a95:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  400a99:	e8 02 fd ff ff       	callq  4007a0 <free@plt>
  400a9e:	b8 00 00 00 00       	mov    $0x0,%eax
  400aa3:	e9 d8 00 00 00       	jmpq   400b80 <convert_to_byte_string+0x194>
  400aa8:	41 83 ed 01          	sub    $0x1,%r13d
  400aac:	e9 99 00 00 00       	jmpq   400b4a <convert_to_byte_string+0x15e>
  400ab1:	45 85 ed             	test   %r13d,%r13d
  400ab4:	0f 85 90 00 00 00    	jne    400b4a <convert_to_byte_string+0x15e>
  400aba:	e8 b1 fd ff ff       	callq  400870 <__ctype_b_loc@plt>
  400abf:	48 8b 00             	mov    (%rax),%rax
  400ac2:	4d 0f be e4          	movsbq %r12b,%r12
  400ac6:	42 f6 44 60 01 10    	testb  $0x10,0x1(%rax,%r12,2)
  400acc:	74 12                	je     400ae0 <convert_to_byte_string+0xf4>
  400ace:	48 0f be 53 01       	movsbq 0x1(%rbx),%rdx
  400ad3:	f6 44 50 01 10       	testb  $0x10,0x1(%rax,%rdx,2)
  400ad8:	74 06                	je     400ae0 <convert_to_byte_string+0xf4>
  400ada:	80 7b 02 00          	cmpb   $0x0,0x2(%rbx)
  400ade:	74 2e                	je     400b0e <convert_to_byte_string+0x122>
  400ae0:	48 89 d9             	mov    %rbx,%rcx
  400ae3:	ba 68 0d 40 00       	mov    $0x400d68,%edx
  400ae8:	be 01 00 00 00       	mov    $0x1,%esi
  400aed:	48 8b 3d ac 15 20 00 	mov    0x2015ac(%rip),%rdi        # 6020a0 <stderr@@GLIBC_2.2.5>
  400af4:	b8 00 00 00 00       	mov    $0x0,%eax
  400af9:	e8 62 fd ff ff       	callq  400860 <__fprintf_chk@plt>
  400afe:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  400b02:	e8 99 fc ff ff       	callq  4007a0 <free@plt>
  400b07:	b8 00 00 00 00       	mov    $0x0,%eax
  400b0c:	eb 72                	jmp    400b80 <convert_to_byte_string+0x194>
  400b0e:	48 89 df             	mov    %rbx,%rdi
  400b11:	e8 94 fe ff ff       	callq  4009aa <convert_to_hex_value>
  400b16:	41 89 c4             	mov    %eax,%r12d
  400b19:	44 3b 7d c4          	cmp    -0x3c(%rbp),%r15d
  400b1d:	75 1c                	jne    400b3b <convert_to_byte_string+0x14f>
  400b1f:	43 8d 04 3f          	lea    (%r15,%r15,1),%eax
  400b23:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  400b26:	48 63 f0             	movslq %eax,%rsi
  400b29:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  400b2d:	e8 fe fc ff ff       	callq  400830 <realloc@plt>
  400b32:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  400b36:	48 85 c0             	test   %rax,%rax
  400b39:	74 40                	je     400b7b <convert_to_byte_string+0x18f>
  400b3b:	49 63 c7             	movslq %r15d,%rax
  400b3e:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  400b42:	44 88 24 01          	mov    %r12b,(%rcx,%rax,1)
  400b46:	45 8d 7f 01          	lea    0x1(%r15),%r15d
  400b4a:	48 89 da             	mov    %rbx,%rdx
  400b4d:	be 62 0d 40 00       	mov    $0x400d62,%esi
  400b52:	4c 89 f7             	mov    %r14,%rdi
  400b55:	b8 00 00 00 00       	mov    $0x0,%eax
  400b5a:	e8 51 fc ff ff       	callq  4007b0 <__isoc99_fscanf@plt>
  400b5f:	85 c0                	test   %eax,%eax
  400b61:	0f 8f d6 fe ff ff    	jg     400a3d <convert_to_byte_string+0x51>
  400b67:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400b6b:	44 89 38             	mov    %r15d,(%rax)
  400b6e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400b72:	eb 0c                	jmp    400b80 <convert_to_byte_string+0x194>
  400b74:	b8 00 00 00 00       	mov    $0x0,%eax
  400b79:	eb 05                	jmp    400b80 <convert_to_byte_string+0x194>
  400b7b:	b8 00 00 00 00       	mov    $0x0,%eax
  400b80:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  400b84:	5b                   	pop    %rbx
  400b85:	41 5c                	pop    %r12
  400b87:	41 5d                	pop    %r13
  400b89:	41 5e                	pop    %r14
  400b8b:	41 5f                	pop    %r15
  400b8d:	5d                   	pop    %rbp
  400b8e:	c3                   	retq   

0000000000400b8f <main>:
  400b8f:	41 54                	push   %r12
  400b91:	55                   	push   %rbp
  400b92:	53                   	push   %rbx
  400b93:	48 83 ec 10          	sub    $0x10,%rsp
  400b97:	41 89 fc             	mov    %edi,%r12d
  400b9a:	48 89 f3             	mov    %rsi,%rbx
  400b9d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400ba4:	00 00 
  400ba6:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  400bab:	31 c0                	xor    %eax,%eax
  400bad:	bd 01 00 00 00       	mov    $0x1,%ebp
  400bb2:	eb 30                	jmp    400be4 <main+0x55>
  400bb4:	bd 05 00 00 00       	mov    $0x5,%ebp
  400bb9:	3c 68                	cmp    $0x68,%al
  400bbb:	74 06                	je     400bc3 <main+0x34>
  400bbd:	3c 6e                	cmp    $0x6e,%al
  400bbf:	74 23                	je     400be4 <main+0x55>
  400bc1:	eb 12                	jmp    400bd5 <main+0x46>
  400bc3:	48 8b 3b             	mov    (%rbx),%rdi
  400bc6:	e8 ab fd ff ff       	callq  400976 <usage>
  400bcb:	b8 00 00 00 00       	mov    $0x0,%eax
  400bd0:	e9 81 00 00 00       	jmpq   400c56 <main+0xc7>
  400bd5:	48 8b 3b             	mov    (%rbx),%rdi
  400bd8:	e8 99 fd ff ff       	callq  400976 <usage>
  400bdd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400be2:	eb 72                	jmp    400c56 <main+0xc7>
  400be4:	ba 65 0d 40 00       	mov    $0x400d65,%edx
  400be9:	48 89 de             	mov    %rbx,%rsi
  400bec:	44 89 e7             	mov    %r12d,%edi
  400bef:	e8 5c fc ff ff       	callq  400850 <getopt@plt>
  400bf4:	3c ff                	cmp    $0xff,%al
  400bf6:	75 bc                	jne    400bb4 <main+0x25>
  400bf8:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  400bfd:	48 8b 3d 94 14 20 00 	mov    0x201494(%rip),%rdi        # 602098 <__TMC_END__>
  400c04:	e8 e3 fd ff ff       	callq  4009ec <convert_to_byte_string>
  400c09:	49 89 c4             	mov    %rax,%r12
  400c0c:	48 85 c0             	test   %rax,%rax
  400c0f:	74 40                	je     400c51 <main+0xc2>
  400c11:	bb 00 00 00 00       	mov    $0x0,%ebx
  400c16:	eb 2e                	jmp    400c46 <main+0xb7>
  400c18:	c6 44 24 03 0a       	movb   $0xa,0x3(%rsp)
  400c1d:	48 63 54 24 04       	movslq 0x4(%rsp),%rdx
  400c22:	4c 89 e6             	mov    %r12,%rsi
  400c25:	bf 01 00 00 00       	mov    $0x1,%edi
  400c2a:	e8 a1 fb ff ff       	callq  4007d0 <write@plt>
  400c2f:	ba 01 00 00 00       	mov    $0x1,%edx
  400c34:	48 8d 74 24 03       	lea    0x3(%rsp),%rsi
  400c39:	bf 01 00 00 00       	mov    $0x1,%edi
  400c3e:	e8 8d fb ff ff       	callq  4007d0 <write@plt>
  400c43:	83 c3 01             	add    $0x1,%ebx
  400c46:	39 eb                	cmp    %ebp,%ebx
  400c48:	7c ce                	jl     400c18 <main+0x89>
  400c4a:	b8 00 00 00 00       	mov    $0x0,%eax
  400c4f:	eb 05                	jmp    400c56 <main+0xc7>
  400c51:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400c56:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  400c5b:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  400c62:	00 00 
  400c64:	74 05                	je     400c6b <main+0xdc>
  400c66:	e8 75 fb ff ff       	callq  4007e0 <__stack_chk_fail@plt>
  400c6b:	48 83 c4 10          	add    $0x10,%rsp
  400c6f:	5b                   	pop    %rbx
  400c70:	5d                   	pop    %rbp
  400c71:	41 5c                	pop    %r12
  400c73:	c3                   	retq   
  400c74:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c7b:	00 00 00 
  400c7e:	66 90                	xchg   %ax,%ax

0000000000400c80 <__libc_csu_init>:
  400c80:	41 57                	push   %r15
  400c82:	41 89 ff             	mov    %edi,%r15d
  400c85:	41 56                	push   %r14
  400c87:	49 89 f6             	mov    %rsi,%r14
  400c8a:	41 55                	push   %r13
  400c8c:	49 89 d5             	mov    %rdx,%r13
  400c8f:	41 54                	push   %r12
  400c91:	4c 8d 25 78 11 20 00 	lea    0x201178(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400c98:	55                   	push   %rbp
  400c99:	48 8d 2d 78 11 20 00 	lea    0x201178(%rip),%rbp        # 601e18 <__init_array_end>
  400ca0:	53                   	push   %rbx
  400ca1:	4c 29 e5             	sub    %r12,%rbp
  400ca4:	31 db                	xor    %ebx,%ebx
  400ca6:	48 c1 fd 03          	sar    $0x3,%rbp
  400caa:	48 83 ec 08          	sub    $0x8,%rsp
  400cae:	e8 b5 fa ff ff       	callq  400768 <_init>
  400cb3:	48 85 ed             	test   %rbp,%rbp
  400cb6:	74 1e                	je     400cd6 <__libc_csu_init+0x56>
  400cb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400cbf:	00 
  400cc0:	4c 89 ea             	mov    %r13,%rdx
  400cc3:	4c 89 f6             	mov    %r14,%rsi
  400cc6:	44 89 ff             	mov    %r15d,%edi
  400cc9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400ccd:	48 83 c3 01          	add    $0x1,%rbx
  400cd1:	48 39 eb             	cmp    %rbp,%rbx
  400cd4:	75 ea                	jne    400cc0 <__libc_csu_init+0x40>
  400cd6:	48 83 c4 08          	add    $0x8,%rsp
  400cda:	5b                   	pop    %rbx
  400cdb:	5d                   	pop    %rbp
  400cdc:	41 5c                	pop    %r12
  400cde:	41 5d                	pop    %r13
  400ce0:	41 5e                	pop    %r14
  400ce2:	41 5f                	pop    %r15
  400ce4:	c3                   	retq   
  400ce5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  400cec:	00 00 00 00 

0000000000400cf0 <__libc_csu_fini>:
  400cf0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400cf4 <_fini>:
  400cf4:	48 83 ec 08          	sub    $0x8,%rsp
  400cf8:	48 83 c4 08          	add    $0x8,%rsp
  400cfc:	c3                   	retq   
