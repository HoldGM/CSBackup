
bufbomb:     file format elf32-i386

SYMBOL TABLE:
55586000 l    d  bstack	00000000              bstack
08048174 l    d  .interp	00000000              .interp
08048188 l    d  .note.ABI-tag	00000000              .note.ABI-tag
080481a8 l    d  .note.gnu.build-id	00000000              .note.gnu.build-id
080481cc l    d  .gnu.hash	00000000              .gnu.hash
080481fc l    d  .dynsym	00000000              .dynsym
0804847c l    d  .dynstr	00000000              .dynstr
0804860a l    d  .gnu.version	00000000              .gnu.version
0804865c l    d  .gnu.version_r	00000000              .gnu.version_r
080486ac l    d  .rel.dyn	00000000              .rel.dyn
080486cc l    d  .rel.plt	00000000              .rel.plt
080487e4 l    d  .init	00000000              .init
08048810 l    d  .plt	00000000              .plt
08048a50 l    d  .text	00000000              .text
0804a054 l    d  .fini	00000000              .fini
0804a068 l    d  .rodata	00000000              .rodata
0804a710 l    d  .eh_frame_hdr	00000000              .eh_frame_hdr
0804a80c l    d  .eh_frame	00000000              .eh_frame
0804bf08 l    d  .init_array	00000000              .init_array
0804bf0c l    d  .fini_array	00000000              .fini_array
0804bf10 l    d  .jcr	00000000              .jcr
0804bf14 l    d  .dynamic	00000000              .dynamic
0804bffc l    d  .got	00000000              .got
0804c000 l    d  .got.plt	00000000              .got.plt
0804c0c0 l    d  .data	00000000              .data
0804d140 l    d  .bss	00000000              .bss
00000000 l    d  .comment	00000000              .comment
00000000 l    df *ABS*	00000000              stack.c
00000000 l    df *ABS*	00000000              crtstuff.c
0804bf10 l     O .jcr	00000000              __JCR_LIST__
08048a90 l     F .text	00000000              deregister_tm_clones
08048ac0 l     F .text	00000000              register_tm_clones
08048b00 l     F .text	00000000              __do_global_dtors_aux
0804d14c l     O .bss	00000001              completed.6877
0804bf0c l     O .fini_array	00000000              __do_global_dtors_aux_fini_array_entry
08048b20 l     F .text	00000000              frame_dummy
0804bf08 l     O .init_array	00000000              __frame_dummy_init_array_entry
00000000 l    df *ABS*	00000000              bufbomb.c
08048bc3 l     F .text	0000004f              usage
0804a3c8 l     O .rodata	00000010              trans_char
08048e7c l     F .text	00000097              launch
00000000 l    df *ABS*	00000000              buf.c
00000000 l    df *ABS*	00000000              support.c
0804c100 l     O .data	00000014              level_counts
00000000 l    df *ABS*	00000000              driverlib.c
0804941d l     F .text	00000125              rio_readlineb
00000000 l    df *ABS*	00000000              gencookie.c
00000000 l    df *ABS*	00000000              crtstuff.c
0804ac64 l     O .eh_frame	00000000              __FRAME_END__
0804bf10 l     O .jcr	00000000              __JCR_END__
00000000 l    df *ABS*	00000000              
0804bf0c l       .init_array	00000000              __init_array_end
0804bf14 l     O .dynamic	00000000              _DYNAMIC
0804bf08 l       .init_array	00000000              __init_array_start
0804c000 l     O .got.plt	00000000              _GLOBAL_OFFSET_TABLE_
0804a050 g     F .text	00000002              __libc_csu_fini
08049184 g     F .text	0000001c              getbufn
00000000       F *UND*	00000000              read@@GLIBC_2.0
00000000  w      *UND*	00000000              _ITM_deregisterTMCloneTable
08048a80 g     F .text	00000004              .hidden __x86.get_pc_thunk.bx
0804c0c0  w      .data	00000000              data_start
00000000       F *UND*	00000000              srandom@@GLIBC_2.0
0804d180 g     O .bss	00000004              stack_top
0804d140 g     O .bss	00000004              stderr@@GLIBC_2.0
08048c89 g     F .text	00000051              bang
0804d140 g       .data	00000000              _edata
00000000       F *UND*	00000000              signal@@GLIBC_2.0
0804a054 g     F .fini	00000000              _fini
00000000       F *UND*	00000000              alarm@@GLIBC_2.0
00000000       F *UND*	00000000              __stack_chk_fail@@GLIBC_2.4
0804d164 g     O .bss	00000004              success
00000000       F *UND*	00000000              _IO_getc@@GLIBC_2.0
08049f2b g     F .text	0000002d              hash
08049542 g     F .text	000007a7              submitr
0804d174 g     O .bss	00000004              notify
08049d20 g     F .text	00000191              init_driver
0804916e g     F .text	00000016              getbuf
00000000       F *UND*	00000000              fwrite@@GLIBC_2.0
55586000 g     O bstack	00100000              _reserved
00000000       F *UND*	00000000              strcpy@@GLIBC_2.0
00000000       F *UND*	00000000              getpid@@GLIBC_2.0
08048b73 g     F .text	00000028              seghandler
00000000       F *UND*	00000000              gethostname@@GLIBC_2.0
0804c0c0 g       .data	00000000              __data_start
00000000       F *UND*	00000000              puts@@GLIBC_2.0
0804d154 g     O .bss	00000004              global_offset
08048cda g     F .text	0000009d              Gets
00000000       F *UND*	00000000              __memmove_chk@@GLIBC_2.3.4
00000000       F *UND*	00000000              __memcpy_chk@@GLIBC_2.3.4
00000000  w      *UND*	00000000              __gmon_start__
00000000       F *UND*	00000000              exit@@GLIBC_2.0
0804c0c4 g     O .data	00000000              .hidden __dso_handle
08048c3a g     F .text	0000004f              fizz
0804a06c g     O .rodata	00000004              _IO_stdin_used
0804c140 g     O .data	00001000              host_table
00000000       F *UND*	00000000              srand@@GLIBC_2.0
00000000       F *UND*	00000000              mmap@@GLIBC_2.0
0804d160 g     O .bss	00000004              global_value
00000000       F *UND*	00000000              __libc_start_main@@GLIBC_2.0
00000000       F *UND*	00000000              write@@GLIBC_2.0
00000000       F *UND*	00000000              getopt@@GLIBC_2.0
00000000       F *UND*	00000000              strcasecmp@@GLIBC_2.0
08049fe0 g     F .text	00000061              __libc_csu_init
0804d144 g     O .bss	00000004              stdin@@GLIBC_2.0
00000000       F *UND*	00000000              __isoc99_sscanf@@GLIBC_2.7
00000000       F *UND*	00000000              memset@@GLIBC_2.0
00000000       F *UND*	00000000              __strdup@@GLIBC_2.0
0804ddc4 g       .bss	00000000              _end
00000000       F *UND*	00000000              __errno_location@@GLIBC_2.0
08048a50 g     F .text	00000000              _start
0804a068 g     O .rodata	00000004              _fp_hw
0804d1c0 g     O .bss	00000c01              gets_buf
0804928e g     F .text	0000016f              validate
08048f13 g     F .text	000000a3              launcher
0804d16c g     O .bss	00000004              infile
080493fd g     F .text	00000020              sigalrm_handler
00000000       F *UND*	00000000              rand@@GLIBC_2.0
08049ce9 g     F .text	00000037              init_timeout
0804d15c g     O .bss	00000004              gets_cnt
0804d150 g     O .bss	00000004              global_save_stack
0804d140 g       .bss	00000000              __bss_start
08048d77 g     F .text	0000001b              uniqueval
0804d178 g     O .bss	00000004              userid
08048fb6 g     F .text	000001b8              main
0804d170 g     O .bss	00000004              autograde
00000000       F *UND*	00000000              __printf_chk@@GLIBC_2.3.4
00000000       F *UND*	00000000              munmap@@GLIBC_2.0
08048b9b g     F .text	00000028              illegalhandler
08048c12 g     F .text	00000028              smoke
00000000  w      *UND*	00000000              _Jv_RegisterClasses
08049eb1 g     F .text	0000007a              driver_post
08048b4b g     F .text	00000028              bushandler
0804d168 g     O .bss	00000004              cookie
08049f58 g     F .text	00000043              check
00000000       F *UND*	00000000              socket@@GLIBC_2.0
0804d140 g     O .data	00000000              .hidden __TMC_END__
0804d158 g     O .bss	00000004              global_nitro
00000000  w      *UND*	00000000              _ITM_registerTMCloneTable
08049f9b g     F .text	00000039              gencookie
00000000       F *UND*	00000000              random@@GLIBC_2.0
0804d148 g     O .bss	00000004              optarg@@GLIBC_2.0
00000000       F *UND*	00000000              gethostbyname@@GLIBC_2.0
00000000       F *UND*	00000000              connect@@GLIBC_2.0
080487e4 g     F .init	00000000              _init
00000000       F *UND*	00000000              close@@GLIBC_2.0
08048e07 g     F .text	00000075              testn
080491a0 g     F .text	000000ee              initialize_bomb
00000000       F *UND*	00000000              calloc@@GLIBC_2.0
00000000       F *UND*	00000000              __sprintf_chk@@GLIBC_2.3.4
08048d92 g     F .text	00000075              test



Disassembly of section .init:

080487e4 <_init>:
 80487e4:	53                   	push   %ebx
 80487e5:	83 ec 08             	sub    $0x8,%esp
 80487e8:	e8 93 02 00 00       	call   8048a80 <__x86.get_pc_thunk.bx>
 80487ed:	81 c3 13 38 00 00    	add    $0x3813,%ebx
 80487f3:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80487f9:	85 c0                	test   %eax,%eax
 80487fb:	74 05                	je     8048802 <_init+0x1e>
 80487fd:	e8 ee 00 00 00       	call   80488f0 <__gmon_start__@plt>
 8048802:	83 c4 08             	add    $0x8,%esp
 8048805:	5b                   	pop    %ebx
 8048806:	c3                   	ret    

Disassembly of section .plt:

08048810 <read@plt-0x10>:
 8048810:	ff 35 04 c0 04 08    	pushl  0x804c004
 8048816:	ff 25 08 c0 04 08    	jmp    *0x804c008
 804881c:	00 00                	add    %al,(%eax)
	...

08048820 <read@plt>:
 8048820:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8048826:	68 00 00 00 00       	push   $0x0
 804882b:	e9 e0 ff ff ff       	jmp    8048810 <_init+0x2c>

08048830 <srandom@plt>:
 8048830:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8048836:	68 08 00 00 00       	push   $0x8
 804883b:	e9 d0 ff ff ff       	jmp    8048810 <_init+0x2c>

08048840 <signal@plt>:
 8048840:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8048846:	68 10 00 00 00       	push   $0x10
 804884b:	e9 c0 ff ff ff       	jmp    8048810 <_init+0x2c>

08048850 <alarm@plt>:
 8048850:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8048856:	68 18 00 00 00       	push   $0x18
 804885b:	e9 b0 ff ff ff       	jmp    8048810 <_init+0x2c>

08048860 <__stack_chk_fail@plt>:
 8048860:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8048866:	68 20 00 00 00       	push   $0x20
 804886b:	e9 a0 ff ff ff       	jmp    8048810 <_init+0x2c>

08048870 <_IO_getc@plt>:
 8048870:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8048876:	68 28 00 00 00       	push   $0x28
 804887b:	e9 90 ff ff ff       	jmp    8048810 <_init+0x2c>

08048880 <fwrite@plt>:
 8048880:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048886:	68 30 00 00 00       	push   $0x30
 804888b:	e9 80 ff ff ff       	jmp    8048810 <_init+0x2c>

08048890 <strcpy@plt>:
 8048890:	ff 25 28 c0 04 08    	jmp    *0x804c028
 8048896:	68 38 00 00 00       	push   $0x38
 804889b:	e9 70 ff ff ff       	jmp    8048810 <_init+0x2c>

080488a0 <getpid@plt>:
 80488a0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80488a6:	68 40 00 00 00       	push   $0x40
 80488ab:	e9 60 ff ff ff       	jmp    8048810 <_init+0x2c>

080488b0 <gethostname@plt>:
 80488b0:	ff 25 30 c0 04 08    	jmp    *0x804c030
 80488b6:	68 48 00 00 00       	push   $0x48
 80488bb:	e9 50 ff ff ff       	jmp    8048810 <_init+0x2c>

080488c0 <puts@plt>:
 80488c0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80488c6:	68 50 00 00 00       	push   $0x50
 80488cb:	e9 40 ff ff ff       	jmp    8048810 <_init+0x2c>

080488d0 <__memmove_chk@plt>:
 80488d0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80488d6:	68 58 00 00 00       	push   $0x58
 80488db:	e9 30 ff ff ff       	jmp    8048810 <_init+0x2c>

080488e0 <__memcpy_chk@plt>:
 80488e0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80488e6:	68 60 00 00 00       	push   $0x60
 80488eb:	e9 20 ff ff ff       	jmp    8048810 <_init+0x2c>

080488f0 <__gmon_start__@plt>:
 80488f0:	ff 25 40 c0 04 08    	jmp    *0x804c040
 80488f6:	68 68 00 00 00       	push   $0x68
 80488fb:	e9 10 ff ff ff       	jmp    8048810 <_init+0x2c>

08048900 <exit@plt>:
 8048900:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8048906:	68 70 00 00 00       	push   $0x70
 804890b:	e9 00 ff ff ff       	jmp    8048810 <_init+0x2c>

08048910 <srand@plt>:
 8048910:	ff 25 48 c0 04 08    	jmp    *0x804c048
 8048916:	68 78 00 00 00       	push   $0x78
 804891b:	e9 f0 fe ff ff       	jmp    8048810 <_init+0x2c>

08048920 <mmap@plt>:
 8048920:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 8048926:	68 80 00 00 00       	push   $0x80
 804892b:	e9 e0 fe ff ff       	jmp    8048810 <_init+0x2c>

08048930 <__libc_start_main@plt>:
 8048930:	ff 25 50 c0 04 08    	jmp    *0x804c050
 8048936:	68 88 00 00 00       	push   $0x88
 804893b:	e9 d0 fe ff ff       	jmp    8048810 <_init+0x2c>

08048940 <write@plt>:
 8048940:	ff 25 54 c0 04 08    	jmp    *0x804c054
 8048946:	68 90 00 00 00       	push   $0x90
 804894b:	e9 c0 fe ff ff       	jmp    8048810 <_init+0x2c>

08048950 <getopt@plt>:
 8048950:	ff 25 58 c0 04 08    	jmp    *0x804c058
 8048956:	68 98 00 00 00       	push   $0x98
 804895b:	e9 b0 fe ff ff       	jmp    8048810 <_init+0x2c>

08048960 <strcasecmp@plt>:
 8048960:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 8048966:	68 a0 00 00 00       	push   $0xa0
 804896b:	e9 a0 fe ff ff       	jmp    8048810 <_init+0x2c>

08048970 <__isoc99_sscanf@plt>:
 8048970:	ff 25 60 c0 04 08    	jmp    *0x804c060
 8048976:	68 a8 00 00 00       	push   $0xa8
 804897b:	e9 90 fe ff ff       	jmp    8048810 <_init+0x2c>

08048980 <memset@plt>:
 8048980:	ff 25 64 c0 04 08    	jmp    *0x804c064
 8048986:	68 b0 00 00 00       	push   $0xb0
 804898b:	e9 80 fe ff ff       	jmp    8048810 <_init+0x2c>

08048990 <__strdup@plt>:
 8048990:	ff 25 68 c0 04 08    	jmp    *0x804c068
 8048996:	68 b8 00 00 00       	push   $0xb8
 804899b:	e9 70 fe ff ff       	jmp    8048810 <_init+0x2c>

080489a0 <__errno_location@plt>:
 80489a0:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 80489a6:	68 c0 00 00 00       	push   $0xc0
 80489ab:	e9 60 fe ff ff       	jmp    8048810 <_init+0x2c>

080489b0 <rand@plt>:
 80489b0:	ff 25 70 c0 04 08    	jmp    *0x804c070
 80489b6:	68 c8 00 00 00       	push   $0xc8
 80489bb:	e9 50 fe ff ff       	jmp    8048810 <_init+0x2c>

080489c0 <__printf_chk@plt>:
 80489c0:	ff 25 74 c0 04 08    	jmp    *0x804c074
 80489c6:	68 d0 00 00 00       	push   $0xd0
 80489cb:	e9 40 fe ff ff       	jmp    8048810 <_init+0x2c>

080489d0 <munmap@plt>:
 80489d0:	ff 25 78 c0 04 08    	jmp    *0x804c078
 80489d6:	68 d8 00 00 00       	push   $0xd8
 80489db:	e9 30 fe ff ff       	jmp    8048810 <_init+0x2c>

080489e0 <socket@plt>:
 80489e0:	ff 25 7c c0 04 08    	jmp    *0x804c07c
 80489e6:	68 e0 00 00 00       	push   $0xe0
 80489eb:	e9 20 fe ff ff       	jmp    8048810 <_init+0x2c>

080489f0 <random@plt>:
 80489f0:	ff 25 80 c0 04 08    	jmp    *0x804c080
 80489f6:	68 e8 00 00 00       	push   $0xe8
 80489fb:	e9 10 fe ff ff       	jmp    8048810 <_init+0x2c>

08048a00 <gethostbyname@plt>:
 8048a00:	ff 25 84 c0 04 08    	jmp    *0x804c084
 8048a06:	68 f0 00 00 00       	push   $0xf0
 8048a0b:	e9 00 fe ff ff       	jmp    8048810 <_init+0x2c>

08048a10 <connect@plt>:
 8048a10:	ff 25 88 c0 04 08    	jmp    *0x804c088
 8048a16:	68 f8 00 00 00       	push   $0xf8
 8048a1b:	e9 f0 fd ff ff       	jmp    8048810 <_init+0x2c>

08048a20 <close@plt>:
 8048a20:	ff 25 8c c0 04 08    	jmp    *0x804c08c
 8048a26:	68 00 01 00 00       	push   $0x100
 8048a2b:	e9 e0 fd ff ff       	jmp    8048810 <_init+0x2c>

08048a30 <calloc@plt>:
 8048a30:	ff 25 90 c0 04 08    	jmp    *0x804c090
 8048a36:	68 08 01 00 00       	push   $0x108
 8048a3b:	e9 d0 fd ff ff       	jmp    8048810 <_init+0x2c>

08048a40 <__sprintf_chk@plt>:
 8048a40:	ff 25 94 c0 04 08    	jmp    *0x804c094
 8048a46:	68 10 01 00 00       	push   $0x110
 8048a4b:	e9 c0 fd ff ff       	jmp    8048810 <_init+0x2c>

Disassembly of section .text:

08048a50 <_start>:
 8048a50:	31 ed                	xor    %ebp,%ebp
 8048a52:	5e                   	pop    %esi
 8048a53:	89 e1                	mov    %esp,%ecx
 8048a55:	83 e4 f0             	and    $0xfffffff0,%esp
 8048a58:	50                   	push   %eax
 8048a59:	54                   	push   %esp
 8048a5a:	52                   	push   %edx
 8048a5b:	68 50 a0 04 08       	push   $0x804a050
 8048a60:	68 e0 9f 04 08       	push   $0x8049fe0
 8048a65:	51                   	push   %ecx
 8048a66:	56                   	push   %esi
 8048a67:	68 b6 8f 04 08       	push   $0x8048fb6
 8048a6c:	e8 bf fe ff ff       	call   8048930 <__libc_start_main@plt>
 8048a71:	f4                   	hlt    
 8048a72:	66 90                	xchg   %ax,%ax
 8048a74:	66 90                	xchg   %ax,%ax
 8048a76:	66 90                	xchg   %ax,%ax
 8048a78:	66 90                	xchg   %ax,%ax
 8048a7a:	66 90                	xchg   %ax,%ax
 8048a7c:	66 90                	xchg   %ax,%ax
 8048a7e:	66 90                	xchg   %ax,%ax

08048a80 <__x86.get_pc_thunk.bx>:
 8048a80:	8b 1c 24             	mov    (%esp),%ebx
 8048a83:	c3                   	ret    
 8048a84:	66 90                	xchg   %ax,%ax
 8048a86:	66 90                	xchg   %ax,%ax
 8048a88:	66 90                	xchg   %ax,%ax
 8048a8a:	66 90                	xchg   %ax,%ax
 8048a8c:	66 90                	xchg   %ax,%ax
 8048a8e:	66 90                	xchg   %ax,%ax

08048a90 <deregister_tm_clones>:
 8048a90:	b8 43 d1 04 08       	mov    $0x804d143,%eax
 8048a95:	2d 40 d1 04 08       	sub    $0x804d140,%eax
 8048a9a:	83 f8 06             	cmp    $0x6,%eax
 8048a9d:	76 1a                	jbe    8048ab9 <deregister_tm_clones+0x29>
 8048a9f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048aa4:	85 c0                	test   %eax,%eax
 8048aa6:	74 11                	je     8048ab9 <deregister_tm_clones+0x29>
 8048aa8:	55                   	push   %ebp
 8048aa9:	89 e5                	mov    %esp,%ebp
 8048aab:	83 ec 14             	sub    $0x14,%esp
 8048aae:	68 40 d1 04 08       	push   $0x804d140
 8048ab3:	ff d0                	call   *%eax
 8048ab5:	83 c4 10             	add    $0x10,%esp
 8048ab8:	c9                   	leave  
 8048ab9:	f3 c3                	repz ret 
 8048abb:	90                   	nop
 8048abc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048ac0 <register_tm_clones>:
 8048ac0:	b8 40 d1 04 08       	mov    $0x804d140,%eax
 8048ac5:	2d 40 d1 04 08       	sub    $0x804d140,%eax
 8048aca:	c1 f8 02             	sar    $0x2,%eax
 8048acd:	89 c2                	mov    %eax,%edx
 8048acf:	c1 ea 1f             	shr    $0x1f,%edx
 8048ad2:	01 d0                	add    %edx,%eax
 8048ad4:	d1 f8                	sar    %eax
 8048ad6:	74 1b                	je     8048af3 <register_tm_clones+0x33>
 8048ad8:	ba 00 00 00 00       	mov    $0x0,%edx
 8048add:	85 d2                	test   %edx,%edx
 8048adf:	74 12                	je     8048af3 <register_tm_clones+0x33>
 8048ae1:	55                   	push   %ebp
 8048ae2:	89 e5                	mov    %esp,%ebp
 8048ae4:	83 ec 10             	sub    $0x10,%esp
 8048ae7:	50                   	push   %eax
 8048ae8:	68 40 d1 04 08       	push   $0x804d140
 8048aed:	ff d2                	call   *%edx
 8048aef:	83 c4 10             	add    $0x10,%esp
 8048af2:	c9                   	leave  
 8048af3:	f3 c3                	repz ret 
 8048af5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048af9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048b00 <__do_global_dtors_aux>:
 8048b00:	80 3d 4c d1 04 08 00 	cmpb   $0x0,0x804d14c
 8048b07:	75 13                	jne    8048b1c <__do_global_dtors_aux+0x1c>
 8048b09:	55                   	push   %ebp
 8048b0a:	89 e5                	mov    %esp,%ebp
 8048b0c:	83 ec 08             	sub    $0x8,%esp
 8048b0f:	e8 7c ff ff ff       	call   8048a90 <deregister_tm_clones>
 8048b14:	c6 05 4c d1 04 08 01 	movb   $0x1,0x804d14c
 8048b1b:	c9                   	leave  
 8048b1c:	f3 c3                	repz ret 
 8048b1e:	66 90                	xchg   %ax,%ax

08048b20 <frame_dummy>:
 8048b20:	b8 10 bf 04 08       	mov    $0x804bf10,%eax
 8048b25:	8b 10                	mov    (%eax),%edx
 8048b27:	85 d2                	test   %edx,%edx
 8048b29:	75 05                	jne    8048b30 <frame_dummy+0x10>
 8048b2b:	eb 93                	jmp    8048ac0 <register_tm_clones>
 8048b2d:	8d 76 00             	lea    0x0(%esi),%esi
 8048b30:	ba 00 00 00 00       	mov    $0x0,%edx
 8048b35:	85 d2                	test   %edx,%edx
 8048b37:	74 f2                	je     8048b2b <frame_dummy+0xb>
 8048b39:	55                   	push   %ebp
 8048b3a:	89 e5                	mov    %esp,%ebp
 8048b3c:	83 ec 14             	sub    $0x14,%esp
 8048b3f:	50                   	push   %eax
 8048b40:	ff d2                	call   *%edx
 8048b42:	83 c4 10             	add    $0x10,%esp
 8048b45:	c9                   	leave  
 8048b46:	e9 75 ff ff ff       	jmp    8048ac0 <register_tm_clones>

08048b4b <bushandler>:
 8048b4b:	55                   	push   %ebp
 8048b4c:	89 e5                	mov    %esp,%ebp
 8048b4e:	83 ec 14             	sub    $0x14,%esp
 8048b51:	68 70 a0 04 08       	push   $0x804a070
 8048b56:	e8 65 fd ff ff       	call   80488c0 <puts@plt>
 8048b5b:	c7 04 24 50 a2 04 08 	movl   $0x804a250,(%esp)
 8048b62:	e8 59 fd ff ff       	call   80488c0 <puts@plt>
 8048b67:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b6e:	e8 8d fd ff ff       	call   8048900 <exit@plt>

08048b73 <seghandler>:
 8048b73:	55                   	push   %ebp
 8048b74:	89 e5                	mov    %esp,%ebp
 8048b76:	83 ec 14             	sub    $0x14,%esp
 8048b79:	68 90 a0 04 08       	push   $0x804a090
 8048b7e:	e8 3d fd ff ff       	call   80488c0 <puts@plt>
 8048b83:	c7 04 24 50 a2 04 08 	movl   $0x804a250,(%esp)
 8048b8a:	e8 31 fd ff ff       	call   80488c0 <puts@plt>
 8048b8f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b96:	e8 65 fd ff ff       	call   8048900 <exit@plt>

08048b9b <illegalhandler>:
 8048b9b:	55                   	push   %ebp
 8048b9c:	89 e5                	mov    %esp,%ebp
 8048b9e:	83 ec 14             	sub    $0x14,%esp
 8048ba1:	68 b8 a0 04 08       	push   $0x804a0b8
 8048ba6:	e8 15 fd ff ff       	call   80488c0 <puts@plt>
 8048bab:	c7 04 24 50 a2 04 08 	movl   $0x804a250,(%esp)
 8048bb2:	e8 09 fd ff ff       	call   80488c0 <puts@plt>
 8048bb7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048bbe:	e8 3d fd ff ff       	call   8048900 <exit@plt>

08048bc3 <usage>:
 8048bc3:	55                   	push   %ebp
 8048bc4:	89 e5                	mov    %esp,%ebp
 8048bc6:	83 ec 0c             	sub    $0xc,%esp
 8048bc9:	50                   	push   %eax
 8048bca:	68 66 a2 04 08       	push   $0x804a266
 8048bcf:	6a 01                	push   $0x1
 8048bd1:	e8 ea fd ff ff       	call   80489c0 <__printf_chk@plt>
 8048bd6:	c7 04 24 84 a2 04 08 	movl   $0x804a284,(%esp)
 8048bdd:	e8 de fc ff ff       	call   80488c0 <puts@plt>
 8048be2:	c7 04 24 9a a2 04 08 	movl   $0x804a29a,(%esp)
 8048be9:	e8 d2 fc ff ff       	call   80488c0 <puts@plt>
 8048bee:	c7 04 24 e4 a0 04 08 	movl   $0x804a0e4,(%esp)
 8048bf5:	e8 c6 fc ff ff       	call   80488c0 <puts@plt>
 8048bfa:	c7 04 24 20 a1 04 08 	movl   $0x804a120,(%esp)
 8048c01:	e8 ba fc ff ff       	call   80488c0 <puts@plt>
 8048c06:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c0d:	e8 ee fc ff ff       	call   8048900 <exit@plt>

08048c12 <smoke>:
 8048c12:	55                   	push   %ebp
 8048c13:	89 e5                	mov    %esp,%ebp
 8048c15:	83 ec 14             	sub    $0x14,%esp
 8048c18:	68 b3 a2 04 08       	push   $0x804a2b3
 8048c1d:	e8 9e fc ff ff       	call   80488c0 <puts@plt>
 8048c22:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c29:	e8 60 06 00 00       	call   804928e <validate>
 8048c2e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c35:	e8 c6 fc ff ff       	call   8048900 <exit@plt>

08048c3a <fizz>:
 8048c3a:	55                   	push   %ebp
 8048c3b:	89 e5                	mov    %esp,%ebp
 8048c3d:	83 ec 08             	sub    $0x8,%esp
 8048c40:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c43:	3b 05 68 d1 04 08    	cmp    0x804d168,%eax
 8048c49:	75 21                	jne    8048c6c <fizz+0x32>
 8048c4b:	83 ec 04             	sub    $0x4,%esp
 8048c4e:	50                   	push   %eax
 8048c4f:	68 ce a2 04 08       	push   $0x804a2ce
 8048c54:	6a 01                	push   $0x1
 8048c56:	e8 65 fd ff ff       	call   80489c0 <__printf_chk@plt>
 8048c5b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048c62:	e8 27 06 00 00       	call   804928e <validate>
 8048c67:	83 c4 10             	add    $0x10,%esp
 8048c6a:	eb 13                	jmp    8048c7f <fizz+0x45>
 8048c6c:	83 ec 04             	sub    $0x4,%esp
 8048c6f:	50                   	push   %eax
 8048c70:	68 48 a1 04 08       	push   $0x804a148
 8048c75:	6a 01                	push   $0x1
 8048c77:	e8 44 fd ff ff       	call   80489c0 <__printf_chk@plt>
 8048c7c:	83 c4 10             	add    $0x10,%esp
 8048c7f:	83 ec 0c             	sub    $0xc,%esp
 8048c82:	6a 00                	push   $0x0
 8048c84:	e8 77 fc ff ff       	call   8048900 <exit@plt>

08048c89 <bang>:
 8048c89:	55                   	push   %ebp
 8048c8a:	89 e5                	mov    %esp,%ebp
 8048c8c:	83 ec 08             	sub    $0x8,%esp
 8048c8f:	a1 60 d1 04 08       	mov    0x804d160,%eax
 8048c94:	3b 05 68 d1 04 08    	cmp    0x804d168,%eax
 8048c9a:	75 21                	jne    8048cbd <bang+0x34>
 8048c9c:	83 ec 04             	sub    $0x4,%esp
 8048c9f:	50                   	push   %eax
 8048ca0:	68 68 a1 04 08       	push   $0x804a168
 8048ca5:	6a 01                	push   $0x1
 8048ca7:	e8 14 fd ff ff       	call   80489c0 <__printf_chk@plt>
 8048cac:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8048cb3:	e8 d6 05 00 00       	call   804928e <validate>
 8048cb8:	83 c4 10             	add    $0x10,%esp
 8048cbb:	eb 13                	jmp    8048cd0 <bang+0x47>
 8048cbd:	83 ec 04             	sub    $0x4,%esp
 8048cc0:	50                   	push   %eax
 8048cc1:	68 ec a2 04 08       	push   $0x804a2ec
 8048cc6:	6a 01                	push   $0x1
 8048cc8:	e8 f3 fc ff ff       	call   80489c0 <__printf_chk@plt>
 8048ccd:	83 c4 10             	add    $0x10,%esp
 8048cd0:	83 ec 0c             	sub    $0xc,%esp
 8048cd3:	6a 00                	push   $0x0
 8048cd5:	e8 26 fc ff ff       	call   8048900 <exit@plt>

08048cda <Gets>:
 8048cda:	55                   	push   %ebp
 8048cdb:	89 e5                	mov    %esp,%ebp
 8048cdd:	57                   	push   %edi
 8048cde:	56                   	push   %esi
 8048cdf:	53                   	push   %ebx
 8048ce0:	83 ec 0c             	sub    $0xc,%esp
 8048ce3:	8b 75 08             	mov    0x8(%ebp),%esi
 8048ce6:	c7 05 5c d1 04 08 00 	movl   $0x0,0x804d15c
 8048ced:	00 00 00 
 8048cf0:	89 f3                	mov    %esi,%ebx
 8048cf2:	eb 4c                	jmp    8048d40 <Gets+0x66>
 8048cf4:	83 c3 01             	add    $0x1,%ebx
 8048cf7:	88 53 ff             	mov    %dl,-0x1(%ebx)
 8048cfa:	8b 0d 5c d1 04 08    	mov    0x804d15c,%ecx
 8048d00:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
 8048d06:	7f 38                	jg     8048d40 <Gets+0x66>
 8048d08:	8d 3c 49             	lea    (%ecx,%ecx,2),%edi
 8048d0b:	89 d0                	mov    %edx,%eax
 8048d0d:	c0 e8 04             	shr    $0x4,%al
 8048d10:	0f be c0             	movsbl %al,%eax
 8048d13:	0f b6 80 c8 a3 04 08 	movzbl 0x804a3c8(%eax),%eax
 8048d1a:	88 87 c0 d1 04 08    	mov    %al,0x804d1c0(%edi)
 8048d20:	83 e2 0f             	and    $0xf,%edx
 8048d23:	0f b6 82 c8 a3 04 08 	movzbl 0x804a3c8(%edx),%eax
 8048d2a:	88 87 c1 d1 04 08    	mov    %al,0x804d1c1(%edi)
 8048d30:	c6 87 c2 d1 04 08 20 	movb   $0x20,0x804d1c2(%edi)
 8048d37:	83 c1 01             	add    $0x1,%ecx
 8048d3a:	89 0d 5c d1 04 08    	mov    %ecx,0x804d15c
 8048d40:	83 ec 0c             	sub    $0xc,%esp
 8048d43:	ff 35 6c d1 04 08    	pushl  0x804d16c
 8048d49:	e8 22 fb ff ff       	call   8048870 <_IO_getc@plt>
 8048d4e:	89 c2                	mov    %eax,%edx
 8048d50:	83 c4 10             	add    $0x10,%esp
 8048d53:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048d56:	74 05                	je     8048d5d <Gets+0x83>
 8048d58:	83 f8 0a             	cmp    $0xa,%eax
 8048d5b:	75 97                	jne    8048cf4 <Gets+0x1a>
 8048d5d:	c6 03 00             	movb   $0x0,(%ebx)
 8048d60:	a1 5c d1 04 08       	mov    0x804d15c,%eax
 8048d65:	c6 84 40 c0 d1 04 08 	movb   $0x0,0x804d1c0(%eax,%eax,2)
 8048d6c:	00 
 8048d6d:	89 f0                	mov    %esi,%eax
 8048d6f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048d72:	5b                   	pop    %ebx
 8048d73:	5e                   	pop    %esi
 8048d74:	5f                   	pop    %edi
 8048d75:	5d                   	pop    %ebp
 8048d76:	c3                   	ret    

08048d77 <uniqueval>:
 8048d77:	55                   	push   %ebp
 8048d78:	89 e5                	mov    %esp,%ebp
 8048d7a:	83 ec 08             	sub    $0x8,%esp
 8048d7d:	e8 1e fb ff ff       	call   80488a0 <getpid@plt>
 8048d82:	83 ec 0c             	sub    $0xc,%esp
 8048d85:	50                   	push   %eax
 8048d86:	e8 a5 fa ff ff       	call   8048830 <srandom@plt>
 8048d8b:	e8 60 fc ff ff       	call   80489f0 <random@plt>
 8048d90:	c9                   	leave  
 8048d91:	c3                   	ret    

08048d92 <test>:
 8048d92:	55                   	push   %ebp
 8048d93:	89 e5                	mov    %esp,%ebp
 8048d95:	53                   	push   %ebx
 8048d96:	83 ec 14             	sub    $0x14,%esp
 8048d99:	e8 d9 ff ff ff       	call   8048d77 <uniqueval>
 8048d9e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048da1:	e8 c8 03 00 00       	call   804916e <getbuf>
 8048da6:	89 c3                	mov    %eax,%ebx
 8048da8:	e8 ca ff ff ff       	call   8048d77 <uniqueval>
 8048dad:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048db0:	39 d0                	cmp    %edx,%eax
 8048db2:	74 12                	je     8048dc6 <test+0x34>
 8048db4:	83 ec 0c             	sub    $0xc,%esp
 8048db7:	68 90 a1 04 08       	push   $0x804a190
 8048dbc:	e8 ff fa ff ff       	call   80488c0 <puts@plt>
 8048dc1:	83 c4 10             	add    $0x10,%esp
 8048dc4:	eb 3c                	jmp    8048e02 <test+0x70>
 8048dc6:	3b 1d 68 d1 04 08    	cmp    0x804d168,%ebx
 8048dcc:	75 21                	jne    8048def <test+0x5d>
 8048dce:	83 ec 04             	sub    $0x4,%esp
 8048dd1:	53                   	push   %ebx
 8048dd2:	68 0a a3 04 08       	push   $0x804a30a
 8048dd7:	6a 01                	push   $0x1
 8048dd9:	e8 e2 fb ff ff       	call   80489c0 <__printf_chk@plt>
 8048dde:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048de5:	e8 a4 04 00 00       	call   804928e <validate>
 8048dea:	83 c4 10             	add    $0x10,%esp
 8048ded:	eb 13                	jmp    8048e02 <test+0x70>
 8048def:	83 ec 04             	sub    $0x4,%esp
 8048df2:	53                   	push   %ebx
 8048df3:	68 27 a3 04 08       	push   $0x804a327
 8048df8:	6a 01                	push   $0x1
 8048dfa:	e8 c1 fb ff ff       	call   80489c0 <__printf_chk@plt>
 8048dff:	83 c4 10             	add    $0x10,%esp
 8048e02:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048e05:	c9                   	leave  
 8048e06:	c3                   	ret    

08048e07 <testn>:
 8048e07:	55                   	push   %ebp
 8048e08:	89 e5                	mov    %esp,%ebp
 8048e0a:	53                   	push   %ebx
 8048e0b:	83 ec 14             	sub    $0x14,%esp
 8048e0e:	e8 64 ff ff ff       	call   8048d77 <uniqueval>
 8048e13:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e16:	e8 69 03 00 00       	call   8049184 <getbufn>
 8048e1b:	89 c3                	mov    %eax,%ebx
 8048e1d:	e8 55 ff ff ff       	call   8048d77 <uniqueval>
 8048e22:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048e25:	39 d0                	cmp    %edx,%eax
 8048e27:	74 12                	je     8048e3b <testn+0x34>
 8048e29:	83 ec 0c             	sub    $0xc,%esp
 8048e2c:	68 90 a1 04 08       	push   $0x804a190
 8048e31:	e8 8a fa ff ff       	call   80488c0 <puts@plt>
 8048e36:	83 c4 10             	add    $0x10,%esp
 8048e39:	eb 3c                	jmp    8048e77 <testn+0x70>
 8048e3b:	3b 1d 68 d1 04 08    	cmp    0x804d168,%ebx
 8048e41:	75 21                	jne    8048e64 <testn+0x5d>
 8048e43:	83 ec 04             	sub    $0x4,%esp
 8048e46:	53                   	push   %ebx
 8048e47:	68 bc a1 04 08       	push   $0x804a1bc
 8048e4c:	6a 01                	push   $0x1
 8048e4e:	e8 6d fb ff ff       	call   80489c0 <__printf_chk@plt>
 8048e53:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048e5a:	e8 2f 04 00 00       	call   804928e <validate>
 8048e5f:	83 c4 10             	add    $0x10,%esp
 8048e62:	eb 13                	jmp    8048e77 <testn+0x70>
 8048e64:	83 ec 04             	sub    $0x4,%esp
 8048e67:	53                   	push   %ebx
 8048e68:	68 42 a3 04 08       	push   $0x804a342
 8048e6d:	6a 01                	push   $0x1
 8048e6f:	e8 4c fb ff ff       	call   80489c0 <__printf_chk@plt>
 8048e74:	83 c4 10             	add    $0x10,%esp
 8048e77:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048e7a:	c9                   	leave  
 8048e7b:	c3                   	ret    

08048e7c <launch>:
 8048e7c:	55                   	push   %ebp
 8048e7d:	89 e5                	mov    %esp,%ebp
 8048e7f:	53                   	push   %ebx
 8048e80:	83 ec 54             	sub    $0x54,%esp
 8048e83:	89 c3                	mov    %eax,%ebx
 8048e85:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048e8b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e8e:	31 c0                	xor    %eax,%eax
 8048e90:	8d 4d b4             	lea    -0x4c(%ebp),%ecx
 8048e93:	81 e1 f0 3f 00 00    	and    $0x3ff0,%ecx
 8048e99:	8d 44 11 1e          	lea    0x1e(%ecx,%edx,1),%eax
 8048e9d:	83 e0 f0             	and    $0xfffffff0,%eax
 8048ea0:	29 c4                	sub    %eax,%esp
 8048ea2:	8d 54 24 0f          	lea    0xf(%esp),%edx
 8048ea6:	83 e2 f0             	and    $0xfffffff0,%edx
 8048ea9:	83 ec 04             	sub    $0x4,%esp
 8048eac:	51                   	push   %ecx
 8048ead:	68 f4 00 00 00       	push   $0xf4
 8048eb2:	52                   	push   %edx
 8048eb3:	e8 c8 fa ff ff       	call   8048980 <memset@plt>
 8048eb8:	83 c4 08             	add    $0x8,%esp
 8048ebb:	68 5e a3 04 08       	push   $0x804a35e
 8048ec0:	6a 01                	push   $0x1
 8048ec2:	e8 f9 fa ff ff       	call   80489c0 <__printf_chk@plt>
 8048ec7:	83 c4 10             	add    $0x10,%esp
 8048eca:	85 db                	test   %ebx,%ebx
 8048ecc:	74 07                	je     8048ed5 <launch+0x59>
 8048ece:	e8 34 ff ff ff       	call   8048e07 <testn>
 8048ed3:	eb 05                	jmp    8048eda <launch+0x5e>
 8048ed5:	e8 b8 fe ff ff       	call   8048d92 <test>
 8048eda:	83 3d 64 d1 04 08 00 	cmpl   $0x0,0x804d164
 8048ee1:	75 1a                	jne    8048efd <launch+0x81>
 8048ee3:	83 ec 0c             	sub    $0xc,%esp
 8048ee6:	68 50 a2 04 08       	push   $0x804a250
 8048eeb:	e8 d0 f9 ff ff       	call   80488c0 <puts@plt>
 8048ef0:	c7 05 64 d1 04 08 00 	movl   $0x0,0x804d164
 8048ef7:	00 00 00 
 8048efa:	83 c4 10             	add    $0x10,%esp
 8048efd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f00:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048f07:	74 05                	je     8048f0e <launch+0x92>
 8048f09:	e8 52 f9 ff ff       	call   8048860 <__stack_chk_fail@plt>
 8048f0e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048f11:	c9                   	leave  
 8048f12:	c3                   	ret    

08048f13 <launcher>:
 8048f13:	55                   	push   %ebp
 8048f14:	89 e5                	mov    %esp,%ebp
 8048f16:	83 ec 10             	sub    $0x10,%esp
 8048f19:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f1c:	a3 58 d1 04 08       	mov    %eax,0x804d158
 8048f21:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048f24:	a3 54 d1 04 08       	mov    %eax,0x804d154
 8048f29:	6a 00                	push   $0x0
 8048f2b:	6a 00                	push   $0x0
 8048f2d:	68 32 01 00 00       	push   $0x132
 8048f32:	6a 07                	push   $0x7
 8048f34:	68 00 00 10 00       	push   $0x100000
 8048f39:	68 00 60 58 55       	push   $0x55586000
 8048f3e:	e8 dd f9 ff ff       	call   8048920 <mmap@plt>
 8048f43:	83 c4 20             	add    $0x20,%esp
 8048f46:	3d 00 60 58 55       	cmp    $0x55586000,%eax
 8048f4b:	74 20                	je     8048f6d <launcher+0x5a>
 8048f4d:	ff 35 40 d1 04 08    	pushl  0x804d140
 8048f53:	6a 47                	push   $0x47
 8048f55:	6a 01                	push   $0x1
 8048f57:	68 dc a1 04 08       	push   $0x804a1dc
 8048f5c:	e8 1f f9 ff ff       	call   8048880 <fwrite@plt>
 8048f61:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f68:	e8 93 f9 ff ff       	call   8048900 <exit@plt>
 8048f6d:	c7 05 80 d1 04 08 f8 	movl   $0x55685ff8,0x804d180
 8048f74:	5f 68 55 
 8048f77:	ba f8 5f 68 55       	mov    $0x55685ff8,%edx
 8048f7c:	89 e0                	mov    %esp,%eax
 8048f7e:	89 d4                	mov    %edx,%esp
 8048f80:	89 c2                	mov    %eax,%edx
 8048f82:	89 15 50 d1 04 08    	mov    %edx,0x804d150
 8048f88:	8b 15 54 d1 04 08    	mov    0x804d154,%edx
 8048f8e:	a1 58 d1 04 08       	mov    0x804d158,%eax
 8048f93:	e8 e4 fe ff ff       	call   8048e7c <launch>
 8048f98:	a1 50 d1 04 08       	mov    0x804d150,%eax
 8048f9d:	89 c4                	mov    %eax,%esp
 8048f9f:	83 ec 08             	sub    $0x8,%esp
 8048fa2:	68 00 00 10 00       	push   $0x100000
 8048fa7:	68 00 60 58 55       	push   $0x55586000
 8048fac:	e8 1f fa ff ff       	call   80489d0 <munmap@plt>
 8048fb1:	83 c4 10             	add    $0x10,%esp
 8048fb4:	c9                   	leave  
 8048fb5:	c3                   	ret    

08048fb6 <main>:
 8048fb6:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048fba:	83 e4 f0             	and    $0xfffffff0,%esp
 8048fbd:	ff 71 fc             	pushl  -0x4(%ecx)
 8048fc0:	55                   	push   %ebp
 8048fc1:	89 e5                	mov    %esp,%ebp
 8048fc3:	57                   	push   %edi
 8048fc4:	56                   	push   %esi
 8048fc5:	53                   	push   %ebx
 8048fc6:	51                   	push   %ecx
 8048fc7:	83 ec 20             	sub    $0x20,%esp
 8048fca:	8b 31                	mov    (%ecx),%esi
 8048fcc:	8b 59 04             	mov    0x4(%ecx),%ebx
 8048fcf:	68 73 8b 04 08       	push   $0x8048b73
 8048fd4:	6a 0b                	push   $0xb
 8048fd6:	e8 65 f8 ff ff       	call   8048840 <signal@plt>
 8048fdb:	83 c4 08             	add    $0x8,%esp
 8048fde:	68 4b 8b 04 08       	push   $0x8048b4b
 8048fe3:	6a 07                	push   $0x7
 8048fe5:	e8 56 f8 ff ff       	call   8048840 <signal@plt>
 8048fea:	83 c4 08             	add    $0x8,%esp
 8048fed:	68 9b 8b 04 08       	push   $0x8048b9b
 8048ff2:	6a 04                	push   $0x4
 8048ff4:	e8 47 f8 ff ff       	call   8048840 <signal@plt>
 8048ff9:	a1 44 d1 04 08       	mov    0x804d144,%eax
 8048ffe:	a3 6c d1 04 08       	mov    %eax,0x804d16c
 8049003:	83 c4 10             	add    $0x10,%esp
 8049006:	bf 01 00 00 00       	mov    $0x1,%edi
 804900b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 8049012:	eb 68                	jmp    804907c <main+0xc6>
 8049014:	83 e8 67             	sub    $0x67,%eax
 8049017:	3c 0e                	cmp    $0xe,%al
 8049019:	77 4e                	ja     8049069 <main+0xb3>
 804901b:	0f b6 c0             	movzbl %al,%eax
 804901e:	ff 24 85 8c a3 04 08 	jmp    *0x804a38c(,%eax,4)
 8049025:	8b 03                	mov    (%ebx),%eax
 8049027:	e8 97 fb ff ff       	call   8048bc3 <usage>
 804902c:	83 ec 0c             	sub    $0xc,%esp
 804902f:	ff 35 48 d1 04 08    	pushl  0x804d148
 8049035:	e8 56 f9 ff ff       	call   8048990 <__strdup@plt>
 804903a:	a3 78 d1 04 08       	mov    %eax,0x804d178
 804903f:	89 04 24             	mov    %eax,(%esp)
 8049042:	e8 54 0f 00 00       	call   8049f9b <gencookie>
 8049047:	a3 68 d1 04 08       	mov    %eax,0x804d168
 804904c:	83 c4 10             	add    $0x10,%esp
 804904f:	eb 2b                	jmp    804907c <main+0xc6>
 8049051:	c7 05 74 d1 04 08 01 	movl   $0x1,0x804d174
 8049058:	00 00 00 
 804905b:	eb 1f                	jmp    804907c <main+0xc6>
 804905d:	c7 05 70 d1 04 08 01 	movl   $0x1,0x804d170
 8049064:	00 00 00 
 8049067:	eb 13                	jmp    804907c <main+0xc6>
 8049069:	8b 03                	mov    (%ebx),%eax
 804906b:	e8 53 fb ff ff       	call   8048bc3 <usage>
 8049070:	bf 05 00 00 00       	mov    $0x5,%edi
 8049075:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 804907c:	83 ec 04             	sub    $0x4,%esp
 804907f:	68 6b a3 04 08       	push   $0x804a36b
 8049084:	53                   	push   %ebx
 8049085:	56                   	push   %esi
 8049086:	e8 c5 f8 ff ff       	call   8048950 <getopt@plt>
 804908b:	83 c4 10             	add    $0x10,%esp
 804908e:	3c ff                	cmp    $0xff,%al
 8049090:	75 82                	jne    8049014 <main+0x5e>
 8049092:	83 3d 78 d1 04 08 00 	cmpl   $0x0,0x804d178
 8049099:	75 18                	jne    80490b3 <main+0xfd>
 804909b:	83 ec 04             	sub    $0x4,%esp
 804909e:	ff 33                	pushl  (%ebx)
 80490a0:	68 24 a2 04 08       	push   $0x804a224
 80490a5:	6a 01                	push   $0x1
 80490a7:	e8 14 f9 ff ff       	call   80489c0 <__printf_chk@plt>
 80490ac:	8b 03                	mov    (%ebx),%eax
 80490ae:	e8 10 fb ff ff       	call   8048bc3 <usage>
 80490b3:	e8 e8 00 00 00       	call   80491a0 <initialize_bomb>
 80490b8:	83 ec 04             	sub    $0x4,%esp
 80490bb:	ff 35 78 d1 04 08    	pushl  0x804d178
 80490c1:	68 72 a3 04 08       	push   $0x804a372
 80490c6:	6a 01                	push   $0x1
 80490c8:	e8 f3 f8 ff ff       	call   80489c0 <__printf_chk@plt>
 80490cd:	83 c4 0c             	add    $0xc,%esp
 80490d0:	ff 35 68 d1 04 08    	pushl  0x804d168
 80490d6:	68 7e a3 04 08       	push   $0x804a37e
 80490db:	6a 01                	push   $0x1
 80490dd:	e8 de f8 ff ff       	call   80489c0 <__printf_chk@plt>
 80490e2:	83 c4 04             	add    $0x4,%esp
 80490e5:	ff 35 68 d1 04 08    	pushl  0x804d168
 80490eb:	e8 40 f7 ff ff       	call   8048830 <srandom@plt>
 80490f0:	e8 fb f8 ff ff       	call   80489f0 <random@plt>
 80490f5:	25 f0 0f 00 00       	and    $0xff0,%eax
 80490fa:	05 00 01 00 00       	add    $0x100,%eax
 80490ff:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8049102:	83 c4 08             	add    $0x8,%esp
 8049105:	6a 04                	push   $0x4
 8049107:	57                   	push   %edi
 8049108:	e8 23 f9 ff ff       	call   8048a30 <calloc@plt>
 804910d:	89 c6                	mov    %eax,%esi
 804910f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049115:	83 c4 10             	add    $0x10,%esp
 8049118:	bb 01 00 00 00       	mov    $0x1,%ebx
 804911d:	eb 17                	jmp    8049136 <main+0x180>
 804911f:	e8 cc f8 ff ff       	call   80489f0 <random@plt>
 8049124:	25 f0 00 00 00       	and    $0xf0,%eax
 8049129:	ba 80 00 00 00       	mov    $0x80,%edx
 804912e:	29 c2                	sub    %eax,%edx
 8049130:	89 14 9e             	mov    %edx,(%esi,%ebx,4)
 8049133:	83 c3 01             	add    $0x1,%ebx
 8049136:	39 fb                	cmp    %edi,%ebx
 8049138:	7c e5                	jl     804911f <main+0x169>
 804913a:	bb 00 00 00 00       	mov    $0x0,%ebx
 804913f:	eb 18                	jmp    8049159 <main+0x1a3>
 8049141:	83 ec 08             	sub    $0x8,%esp
 8049144:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049147:	03 04 9e             	add    (%esi,%ebx,4),%eax
 804914a:	50                   	push   %eax
 804914b:	ff 75 e4             	pushl  -0x1c(%ebp)
 804914e:	e8 c0 fd ff ff       	call   8048f13 <launcher>
 8049153:	83 c3 01             	add    $0x1,%ebx
 8049156:	83 c4 10             	add    $0x10,%esp
 8049159:	39 fb                	cmp    %edi,%ebx
 804915b:	7c e4                	jl     8049141 <main+0x18b>
 804915d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049162:	8d 65 f0             	lea    -0x10(%ebp),%esp
 8049165:	59                   	pop    %ecx
 8049166:	5b                   	pop    %ebx
 8049167:	5e                   	pop    %esi
 8049168:	5f                   	pop    %edi
 8049169:	5d                   	pop    %ebp
 804916a:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804916d:	c3                   	ret    

0804916e <getbuf>:
 804916e:	55                   	push   %ebp
 804916f:	89 e5                	mov    %esp,%ebp
 8049171:	83 ec 34             	sub    $0x34,%esp
 8049174:	8d 45 d8             	lea    -0x28(%ebp),%eax
 8049177:	50                   	push   %eax
 8049178:	e8 5d fb ff ff       	call   8048cda <Gets>
 804917d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049182:	c9                   	leave  
 8049183:	c3                   	ret    

08049184 <getbufn>:
 8049184:	55                   	push   %ebp
 8049185:	89 e5                	mov    %esp,%ebp
 8049187:	81 ec 14 02 00 00    	sub    $0x214,%esp
 804918d:	8d 85 f8 fd ff ff    	lea    -0x208(%ebp),%eax
 8049193:	50                   	push   %eax
 8049194:	e8 41 fb ff ff       	call   8048cda <Gets>
 8049199:	b8 01 00 00 00       	mov    $0x1,%eax
 804919e:	c9                   	leave  
 804919f:	c3                   	ret    

080491a0 <initialize_bomb>:
 80491a0:	55                   	push   %ebp
 80491a1:	89 e5                	mov    %esp,%ebp
 80491a3:	56                   	push   %esi
 80491a4:	53                   	push   %ebx
 80491a5:	81 ec 10 24 00 00    	sub    $0x2410,%esp
 80491ab:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80491b1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80491b4:	31 c0                	xor    %eax,%eax
 80491b6:	83 3d 70 d1 04 08 00 	cmpl   $0x0,0x804d170
 80491bd:	74 0d                	je     80491cc <initialize_bomb+0x2c>
 80491bf:	83 ec 0c             	sub    $0xc,%esp
 80491c2:	6a ff                	push   $0xffffffff
 80491c4:	e8 20 0b 00 00       	call   8049ce9 <init_timeout>
 80491c9:	83 c4 10             	add    $0x10,%esp
 80491cc:	83 3d 74 d1 04 08 00 	cmpl   $0x0,0x804d174
 80491d3:	0f 84 9d 00 00 00    	je     8049276 <initialize_bomb+0xd6>
 80491d9:	83 ec 08             	sub    $0x8,%esp
 80491dc:	68 00 04 00 00       	push   $0x400
 80491e1:	8d 85 f4 db ff ff    	lea    -0x240c(%ebp),%eax
 80491e7:	50                   	push   %eax
 80491e8:	e8 c3 f6 ff ff       	call   80488b0 <gethostname@plt>
 80491ed:	83 c4 10             	add    $0x10,%esp
 80491f0:	85 c0                	test   %eax,%eax
 80491f2:	75 16                	jne    804920a <initialize_bomb+0x6a>
 80491f4:	a1 40 c1 04 08       	mov    0x804c140,%eax
 80491f9:	bb 44 c1 04 08       	mov    $0x804c144,%ebx
 80491fe:	8d b5 f4 db ff ff    	lea    -0x240c(%ebp),%esi
 8049204:	85 c0                	test   %eax,%eax
 8049206:	75 1b                	jne    8049223 <initialize_bomb+0x83>
 8049208:	eb 34                	jmp    804923e <initialize_bomb+0x9e>
 804920a:	83 ec 0c             	sub    $0xc,%esp
 804920d:	68 d8 a3 04 08       	push   $0x804a3d8
 8049212:	e8 a9 f6 ff ff       	call   80488c0 <puts@plt>
 8049217:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804921e:	e8 dd f6 ff ff       	call   8048900 <exit@plt>
 8049223:	83 ec 08             	sub    $0x8,%esp
 8049226:	56                   	push   %esi
 8049227:	50                   	push   %eax
 8049228:	e8 33 f7 ff ff       	call   8048960 <strcasecmp@plt>
 804922d:	83 c4 10             	add    $0x10,%esp
 8049230:	85 c0                	test   %eax,%eax
 8049232:	74 0a                	je     804923e <initialize_bomb+0x9e>
 8049234:	83 c3 04             	add    $0x4,%ebx
 8049237:	8b 43 fc             	mov    -0x4(%ebx),%eax
 804923a:	85 c0                	test   %eax,%eax
 804923c:	75 e5                	jne    8049223 <initialize_bomb+0x83>
 804923e:	83 ec 0c             	sub    $0xc,%esp
 8049241:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049247:	50                   	push   %eax
 8049248:	e8 d3 0a 00 00       	call   8049d20 <init_driver>
 804924d:	83 c4 10             	add    $0x10,%esp
 8049250:	85 c0                	test   %eax,%eax
 8049252:	79 22                	jns    8049276 <initialize_bomb+0xd6>
 8049254:	83 ec 04             	sub    $0x4,%esp
 8049257:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 804925d:	50                   	push   %eax
 804925e:	68 0a a5 04 08       	push   $0x804a50a
 8049263:	6a 01                	push   $0x1
 8049265:	e8 56 f7 ff ff       	call   80489c0 <__printf_chk@plt>
 804926a:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049271:	e8 8a f6 ff ff       	call   8048900 <exit@plt>
 8049276:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049279:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049280:	74 05                	je     8049287 <initialize_bomb+0xe7>
 8049282:	e8 d9 f5 ff ff       	call   8048860 <__stack_chk_fail@plt>
 8049287:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804928a:	5b                   	pop    %ebx
 804928b:	5e                   	pop    %esi
 804928c:	5d                   	pop    %ebp
 804928d:	c3                   	ret    

0804928e <validate>:
 804928e:	55                   	push   %ebp
 804928f:	89 e5                	mov    %esp,%ebp
 8049291:	57                   	push   %edi
 8049292:	53                   	push   %ebx
 8049293:	81 ec 10 40 00 00    	sub    $0x4010,%esp
 8049299:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804929c:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80492a2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80492a5:	31 c0                	xor    %eax,%eax
 80492a7:	83 3d 78 d1 04 08 00 	cmpl   $0x0,0x804d178
 80492ae:	75 15                	jne    80492c5 <validate+0x37>
 80492b0:	83 ec 0c             	sub    $0xc,%esp
 80492b3:	68 10 a4 04 08       	push   $0x804a410
 80492b8:	e8 03 f6 ff ff       	call   80488c0 <puts@plt>
 80492bd:	83 c4 10             	add    $0x10,%esp
 80492c0:	e9 20 01 00 00       	jmp    80493e5 <validate+0x157>
 80492c5:	83 fb 04             	cmp    $0x4,%ebx
 80492c8:	76 15                	jbe    80492df <validate+0x51>
 80492ca:	83 ec 0c             	sub    $0xc,%esp
 80492cd:	68 3c a4 04 08       	push   $0x804a43c
 80492d2:	e8 e9 f5 ff ff       	call   80488c0 <puts@plt>
 80492d7:	83 c4 10             	add    $0x10,%esp
 80492da:	e9 06 01 00 00       	jmp    80493e5 <validate+0x157>
 80492df:	c7 05 64 d1 04 08 01 	movl   $0x1,0x804d164
 80492e6:	00 00 00 
 80492e9:	8b 04 9d 00 c1 04 08 	mov    0x804c100(,%ebx,4),%eax
 80492f0:	83 e8 01             	sub    $0x1,%eax
 80492f3:	89 04 9d 00 c1 04 08 	mov    %eax,0x804c100(,%ebx,4)
 80492fa:	85 c0                	test   %eax,%eax
 80492fc:	7e 15                	jle    8049313 <validate+0x85>
 80492fe:	83 ec 0c             	sub    $0xc,%esp
 8049301:	68 1f a5 04 08       	push   $0x804a51f
 8049306:	e8 b5 f5 ff ff       	call   80488c0 <puts@plt>
 804930b:	83 c4 10             	add    $0x10,%esp
 804930e:	e9 d2 00 00 00       	jmp    80493e5 <validate+0x157>
 8049313:	83 ec 0c             	sub    $0xc,%esp
 8049316:	68 2a a5 04 08       	push   $0x804a52a
 804931b:	e8 a0 f5 ff ff       	call   80488c0 <puts@plt>
 8049320:	83 c4 10             	add    $0x10,%esp
 8049323:	83 3d 74 d1 04 08 00 	cmpl   $0x0,0x804d174
 804932a:	0f 84 a5 00 00 00    	je     80493d5 <validate+0x147>
 8049330:	bf c0 d1 04 08       	mov    $0x804d1c0,%edi
 8049335:	b8 00 00 00 00       	mov    $0x0,%eax
 804933a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804933f:	f2 ae                	repnz scas %es:(%edi),%al
 8049341:	89 c8                	mov    %ecx,%eax
 8049343:	f7 d0                	not    %eax
 8049345:	83 c0 1f             	add    $0x1f,%eax
 8049348:	3d 00 20 00 00       	cmp    $0x2000,%eax
 804934d:	76 15                	jbe    8049364 <validate+0xd6>
 804934f:	83 ec 0c             	sub    $0xc,%esp
 8049352:	68 64 a4 04 08       	push   $0x804a464
 8049357:	e8 64 f5 ff ff       	call   80488c0 <puts@plt>
 804935c:	83 c4 10             	add    $0x10,%esp
 804935f:	e9 81 00 00 00       	jmp    80493e5 <validate+0x157>
 8049364:	83 ec 04             	sub    $0x4,%esp
 8049367:	68 c0 d1 04 08       	push   $0x804d1c0
 804936c:	ff 35 68 d1 04 08    	pushl  0x804d168
 8049372:	53                   	push   %ebx
 8049373:	68 30 a5 04 08       	push   $0x804a530
 8049378:	68 00 20 00 00       	push   $0x2000
 804937d:	6a 01                	push   $0x1
 804937f:	8d 9d f4 bf ff ff    	lea    -0x400c(%ebp),%ebx
 8049385:	53                   	push   %ebx
 8049386:	e8 b5 f6 ff ff       	call   8048a40 <__sprintf_chk@plt>
 804938b:	83 c4 20             	add    $0x20,%esp
 804938e:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049394:	50                   	push   %eax
 8049395:	6a 00                	push   $0x0
 8049397:	53                   	push   %ebx
 8049398:	ff 35 78 d1 04 08    	pushl  0x804d178
 804939e:	e8 0e 0b 00 00       	call   8049eb1 <driver_post>
 80493a3:	83 c4 10             	add    $0x10,%esp
 80493a6:	85 c0                	test   %eax,%eax
 80493a8:	75 12                	jne    80493bc <validate+0x12e>
 80493aa:	83 ec 0c             	sub    $0xc,%esp
 80493ad:	68 9c a4 04 08       	push   $0x804a49c
 80493b2:	e8 09 f5 ff ff       	call   80488c0 <puts@plt>
 80493b7:	83 c4 10             	add    $0x10,%esp
 80493ba:	eb 19                	jmp    80493d5 <validate+0x147>
 80493bc:	83 ec 04             	sub    $0x4,%esp
 80493bf:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 80493c5:	50                   	push   %eax
 80493c6:	68 cc a4 04 08       	push   $0x804a4cc
 80493cb:	6a 01                	push   $0x1
 80493cd:	e8 ee f5 ff ff       	call   80489c0 <__printf_chk@plt>
 80493d2:	83 c4 10             	add    $0x10,%esp
 80493d5:	83 ec 0c             	sub    $0xc,%esp
 80493d8:	68 39 a5 04 08       	push   $0x804a539
 80493dd:	e8 de f4 ff ff       	call   80488c0 <puts@plt>
 80493e2:	83 c4 10             	add    $0x10,%esp
 80493e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80493e8:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 80493ef:	74 05                	je     80493f6 <validate+0x168>
 80493f1:	e8 6a f4 ff ff       	call   8048860 <__stack_chk_fail@plt>
 80493f6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 80493f9:	5b                   	pop    %ebx
 80493fa:	5f                   	pop    %edi
 80493fb:	5d                   	pop    %ebp
 80493fc:	c3                   	ret    

080493fd <sigalrm_handler>:
 80493fd:	55                   	push   %ebp
 80493fe:	89 e5                	mov    %esp,%ebp
 8049400:	83 ec 0c             	sub    $0xc,%esp
 8049403:	6a 02                	push   $0x2
 8049405:	68 5c a5 04 08       	push   $0x804a55c
 804940a:	6a 01                	push   $0x1
 804940c:	e8 af f5 ff ff       	call   80489c0 <__printf_chk@plt>
 8049411:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049418:	e8 e3 f4 ff ff       	call   8048900 <exit@plt>

0804941d <rio_readlineb>:
 804941d:	55                   	push   %ebp
 804941e:	89 e5                	mov    %esp,%ebp
 8049420:	57                   	push   %edi
 8049421:	56                   	push   %esi
 8049422:	53                   	push   %ebx
 8049423:	83 ec 3c             	sub    $0x3c,%esp
 8049426:	89 c7                	mov    %eax,%edi
 8049428:	89 55 d0             	mov    %edx,-0x30(%ebp)
 804942b:	89 c8                	mov    %ecx,%eax
 804942d:	89 4d c0             	mov    %ecx,-0x40(%ebp)
 8049430:	65 8b 0d 14 00 00 00 	mov    %gs:0x14,%ecx
 8049437:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 804943a:	31 c9                	xor    %ecx,%ecx
 804943c:	83 f8 01             	cmp    $0x1,%eax
 804943f:	0f 86 b3 00 00 00    	jbe    80494f8 <rio_readlineb+0xdb>
 8049445:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 8049448:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 804944f:	8d 47 0c             	lea    0xc(%edi),%eax
 8049452:	89 45 c8             	mov    %eax,-0x38(%ebp)
 8049455:	e9 99 00 00 00       	jmp    80494f3 <rio_readlineb+0xd6>
 804945a:	83 ec 04             	sub    $0x4,%esp
 804945d:	68 00 20 00 00       	push   $0x2000
 8049462:	53                   	push   %ebx
 8049463:	ff 37                	pushl  (%edi)
 8049465:	e8 b6 f3 ff ff       	call   8048820 <read@plt>
 804946a:	89 47 04             	mov    %eax,0x4(%edi)
 804946d:	83 c4 10             	add    $0x10,%esp
 8049470:	85 c0                	test   %eax,%eax
 8049472:	79 0f                	jns    8049483 <rio_readlineb+0x66>
 8049474:	e8 27 f5 ff ff       	call   80489a0 <__errno_location@plt>
 8049479:	83 38 04             	cmpl   $0x4,(%eax)
 804947c:	74 10                	je     804948e <rio_readlineb+0x71>
 804947e:	e9 a4 00 00 00       	jmp    8049527 <rio_readlineb+0x10a>
 8049483:	85 c0                	test   %eax,%eax
 8049485:	0f 84 a3 00 00 00    	je     804952e <rio_readlineb+0x111>
 804948b:	89 5f 08             	mov    %ebx,0x8(%edi)
 804948e:	8b 77 04             	mov    0x4(%edi),%esi
 8049491:	85 f6                	test   %esi,%esi
 8049493:	7e c5                	jle    804945a <rio_readlineb+0x3d>
 8049495:	85 f6                	test   %esi,%esi
 8049497:	0f 95 c3             	setne  %bl
 804949a:	0f b6 db             	movzbl %bl,%ebx
 804949d:	8b 47 08             	mov    0x8(%edi),%eax
 80494a0:	6a 01                	push   $0x1
 80494a2:	53                   	push   %ebx
 80494a3:	89 45 cc             	mov    %eax,-0x34(%ebp)
 80494a6:	50                   	push   %eax
 80494a7:	8d 4d e3             	lea    -0x1d(%ebp),%ecx
 80494aa:	51                   	push   %ecx
 80494ab:	e8 30 f4 ff ff       	call   80488e0 <__memcpy_chk@plt>
 80494b0:	8b 45 cc             	mov    -0x34(%ebp),%eax
 80494b3:	01 d8                	add    %ebx,%eax
 80494b5:	89 47 08             	mov    %eax,0x8(%edi)
 80494b8:	29 de                	sub    %ebx,%esi
 80494ba:	89 77 04             	mov    %esi,0x4(%edi)
 80494bd:	83 c4 10             	add    $0x10,%esp
 80494c0:	83 fb 01             	cmp    $0x1,%ebx
 80494c3:	75 14                	jne    80494d9 <rio_readlineb+0xbc>
 80494c5:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
 80494c9:	8b 55 d0             	mov    -0x30(%ebp),%edx
 80494cc:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
 80494d0:	88 42 ff             	mov    %al,-0x1(%edx)
 80494d3:	3c 0a                	cmp    $0xa,%al
 80494d5:	75 10                	jne    80494e7 <rio_readlineb+0xca>
 80494d7:	eb 2e                	jmp    8049507 <rio_readlineb+0xea>
 80494d9:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 80494dc:	85 db                	test   %ebx,%ebx
 80494de:	75 32                	jne    8049512 <rio_readlineb+0xf5>
 80494e0:	83 f8 01             	cmp    $0x1,%eax
 80494e3:	75 22                	jne    8049507 <rio_readlineb+0xea>
 80494e5:	eb 30                	jmp    8049517 <rio_readlineb+0xfa>
 80494e7:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
 80494eb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 80494ee:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
 80494f1:	74 0e                	je     8049501 <rio_readlineb+0xe4>
 80494f3:	8b 5d c8             	mov    -0x38(%ebp),%ebx
 80494f6:	eb 96                	jmp    804948e <rio_readlineb+0x71>
 80494f8:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 80494ff:	eb 06                	jmp    8049507 <rio_readlineb+0xea>
 8049501:	8b 45 c0             	mov    -0x40(%ebp),%eax
 8049504:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049507:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804950a:	c6 00 00             	movb   $0x0,(%eax)
 804950d:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8049510:	eb 05                	jmp    8049517 <rio_readlineb+0xfa>
 8049512:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 8049517:	89 d8                	mov    %ebx,%eax
 8049519:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 804951c:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 8049523:	74 15                	je     804953a <rio_readlineb+0x11d>
 8049525:	eb 0e                	jmp    8049535 <rio_readlineb+0x118>
 8049527:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 804952c:	eb 02                	jmp    8049530 <rio_readlineb+0x113>
 804952e:	89 c3                	mov    %eax,%ebx
 8049530:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049533:	eb a7                	jmp    80494dc <rio_readlineb+0xbf>
 8049535:	e8 26 f3 ff ff       	call   8048860 <__stack_chk_fail@plt>
 804953a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804953d:	5b                   	pop    %ebx
 804953e:	5e                   	pop    %esi
 804953f:	5f                   	pop    %edi
 8049540:	5d                   	pop    %ebp
 8049541:	c3                   	ret    

08049542 <submitr>:
 8049542:	55                   	push   %ebp
 8049543:	89 e5                	mov    %esp,%ebp
 8049545:	57                   	push   %edi
 8049546:	56                   	push   %esi
 8049547:	53                   	push   %ebx
 8049548:	81 ec 60 a0 00 00    	sub    $0xa060,%esp
 804954e:	8b 7d 08             	mov    0x8(%ebp),%edi
 8049551:	8b 45 10             	mov    0x10(%ebp),%eax
 8049554:	89 85 b0 5f ff ff    	mov    %eax,-0xa050(%ebp)
 804955a:	8b 45 14             	mov    0x14(%ebp),%eax
 804955d:	89 85 ac 5f ff ff    	mov    %eax,-0xa054(%ebp)
 8049563:	8b 45 18             	mov    0x18(%ebp),%eax
 8049566:	89 85 a8 5f ff ff    	mov    %eax,-0xa058(%ebp)
 804956c:	8b 5d 1c             	mov    0x1c(%ebp),%ebx
 804956f:	8b 45 20             	mov    0x20(%ebp),%eax
 8049572:	89 85 a4 5f ff ff    	mov    %eax,-0xa05c(%ebp)
 8049578:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804957e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049581:	31 c0                	xor    %eax,%eax
 8049583:	c7 85 c4 5f ff ff 00 	movl   $0x0,-0xa03c(%ebp)
 804958a:	00 00 00 
 804958d:	6a 00                	push   $0x0
 804958f:	6a 01                	push   $0x1
 8049591:	6a 02                	push   $0x2
 8049593:	e8 48 f4 ff ff       	call   80489e0 <socket@plt>
 8049598:	89 85 b4 5f ff ff    	mov    %eax,-0xa04c(%ebp)
 804959e:	83 c4 10             	add    $0x10,%esp
 80495a1:	85 c0                	test   %eax,%eax
 80495a3:	79 54                	jns    80495f9 <submitr+0xb7>
 80495a5:	8b 85 a4 5f ff ff    	mov    -0xa05c(%ebp),%eax
 80495ab:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80495b1:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80495b8:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80495bf:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80495c6:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80495cd:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80495d4:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 80495db:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 80495e2:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 80495e9:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 80495ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80495f4:	e9 2c 06 00 00       	jmp    8049c25 <submitr+0x6e3>
 80495f9:	83 ec 0c             	sub    $0xc,%esp
 80495fc:	57                   	push   %edi
 80495fd:	e8 fe f3 ff ff       	call   8048a00 <gethostbyname@plt>
 8049602:	83 c4 10             	add    $0x10,%esp
 8049605:	85 c0                	test   %eax,%eax
 8049607:	75 33                	jne    804963c <submitr+0xfa>
 8049609:	83 ec 0c             	sub    $0xc,%esp
 804960c:	57                   	push   %edi
 804960d:	68 80 a5 04 08       	push   $0x804a580
 8049612:	6a ff                	push   $0xffffffff
 8049614:	6a 01                	push   $0x1
 8049616:	ff b5 a4 5f ff ff    	pushl  -0xa05c(%ebp)
 804961c:	e8 1f f4 ff ff       	call   8048a40 <__sprintf_chk@plt>
 8049621:	83 c4 14             	add    $0x14,%esp
 8049624:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 804962a:	e8 f1 f3 ff ff       	call   8048a20 <close@plt>
 804962f:	83 c4 10             	add    $0x10,%esp
 8049632:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049637:	e9 e9 05 00 00       	jmp    8049c25 <submitr+0x6e3>
 804963c:	8d b5 c8 5f ff ff    	lea    -0xa038(%ebp),%esi
 8049642:	c7 85 c8 5f ff ff 00 	movl   $0x0,-0xa038(%ebp)
 8049649:	00 00 00 
 804964c:	c7 85 cc 5f ff ff 00 	movl   $0x0,-0xa034(%ebp)
 8049653:	00 00 00 
 8049656:	c7 85 d0 5f ff ff 00 	movl   $0x0,-0xa030(%ebp)
 804965d:	00 00 00 
 8049660:	c7 85 d4 5f ff ff 00 	movl   $0x0,-0xa02c(%ebp)
 8049667:	00 00 00 
 804966a:	66 c7 85 c8 5f ff ff 	movw   $0x2,-0xa038(%ebp)
 8049671:	02 00 
 8049673:	6a 0c                	push   $0xc
 8049675:	ff 70 0c             	pushl  0xc(%eax)
 8049678:	8b 40 10             	mov    0x10(%eax),%eax
 804967b:	ff 30                	pushl  (%eax)
 804967d:	8d 85 cc 5f ff ff    	lea    -0xa034(%ebp),%eax
 8049683:	50                   	push   %eax
 8049684:	e8 47 f2 ff ff       	call   80488d0 <__memmove_chk@plt>
 8049689:	0f b7 45 0c          	movzwl 0xc(%ebp),%eax
 804968d:	66 c1 c8 08          	ror    $0x8,%ax
 8049691:	66 89 85 ca 5f ff ff 	mov    %ax,-0xa036(%ebp)
 8049698:	83 c4 0c             	add    $0xc,%esp
 804969b:	6a 10                	push   $0x10
 804969d:	56                   	push   %esi
 804969e:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80496a4:	e8 67 f3 ff ff       	call   8048a10 <connect@plt>
 80496a9:	83 c4 10             	add    $0x10,%esp
 80496ac:	85 c0                	test   %eax,%eax
 80496ae:	79 33                	jns    80496e3 <submitr+0x1a1>
 80496b0:	83 ec 0c             	sub    $0xc,%esp
 80496b3:	57                   	push   %edi
 80496b4:	68 ac a5 04 08       	push   $0x804a5ac
 80496b9:	6a ff                	push   $0xffffffff
 80496bb:	6a 01                	push   $0x1
 80496bd:	ff b5 a4 5f ff ff    	pushl  -0xa05c(%ebp)
 80496c3:	e8 78 f3 ff ff       	call   8048a40 <__sprintf_chk@plt>
 80496c8:	83 c4 14             	add    $0x14,%esp
 80496cb:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80496d1:	e8 4a f3 ff ff       	call   8048a20 <close@plt>
 80496d6:	83 c4 10             	add    $0x10,%esp
 80496d9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80496de:	e9 42 05 00 00       	jmp    8049c25 <submitr+0x6e3>
 80496e3:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 80496e8:	89 df                	mov    %ebx,%edi
 80496ea:	b8 00 00 00 00       	mov    $0x0,%eax
 80496ef:	89 d1                	mov    %edx,%ecx
 80496f1:	f2 ae                	repnz scas %es:(%edi),%al
 80496f3:	89 ce                	mov    %ecx,%esi
 80496f5:	f7 d6                	not    %esi
 80496f7:	8b bd b0 5f ff ff    	mov    -0xa050(%ebp),%edi
 80496fd:	89 d1                	mov    %edx,%ecx
 80496ff:	f2 ae                	repnz scas %es:(%edi),%al
 8049701:	89 8d a0 5f ff ff    	mov    %ecx,-0xa060(%ebp)
 8049707:	8b bd ac 5f ff ff    	mov    -0xa054(%ebp),%edi
 804970d:	89 d1                	mov    %edx,%ecx
 804970f:	f2 ae                	repnz scas %es:(%edi),%al
 8049711:	89 cf                	mov    %ecx,%edi
 8049713:	f7 d7                	not    %edi
 8049715:	89 bd 9c 5f ff ff    	mov    %edi,-0xa064(%ebp)
 804971b:	8b bd a8 5f ff ff    	mov    -0xa058(%ebp),%edi
 8049721:	89 d1                	mov    %edx,%ecx
 8049723:	f2 ae                	repnz scas %es:(%edi),%al
 8049725:	8b 95 9c 5f ff ff    	mov    -0xa064(%ebp),%edx
 804972b:	2b 95 a0 5f ff ff    	sub    -0xa060(%ebp),%edx
 8049731:	29 ca                	sub    %ecx,%edx
 8049733:	8d 44 76 fd          	lea    -0x3(%esi,%esi,2),%eax
 8049737:	8d 44 02 7b          	lea    0x7b(%edx,%eax,1),%eax
 804973b:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049740:	0f 86 82 00 00 00    	jbe    80497c8 <submitr+0x286>
 8049746:	8b 85 a4 5f ff ff    	mov    -0xa05c(%ebp),%eax
 804974c:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049752:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 8049759:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049760:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 8049767:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 804976e:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049775:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 804977c:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049783:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804978a:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049791:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 8049798:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 804979f:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 80497a6:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 80497ad:	83 ec 0c             	sub    $0xc,%esp
 80497b0:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80497b6:	e8 65 f2 ff ff       	call   8048a20 <close@plt>
 80497bb:	83 c4 10             	add    $0x10,%esp
 80497be:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80497c3:	e9 5d 04 00 00       	jmp    8049c25 <submitr+0x6e3>
 80497c8:	8d 95 e4 9f ff ff    	lea    -0x601c(%ebp),%edx
 80497ce:	b9 00 08 00 00       	mov    $0x800,%ecx
 80497d3:	b8 00 00 00 00       	mov    $0x0,%eax
 80497d8:	89 d7                	mov    %edx,%edi
 80497da:	f3 ab                	rep stos %eax,%es:(%edi)
 80497dc:	89 df                	mov    %ebx,%edi
 80497de:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80497e3:	f2 ae                	repnz scas %es:(%edi),%al
 80497e5:	f7 d1                	not    %ecx
 80497e7:	89 ce                	mov    %ecx,%esi
 80497e9:	83 ee 01             	sub    $0x1,%esi
 80497ec:	0f 84 90 04 00 00    	je     8049c82 <submitr+0x740>
 80497f2:	89 d7                	mov    %edx,%edi
 80497f4:	0f b6 03             	movzbl (%ebx),%eax
 80497f7:	3c 5f                	cmp    $0x5f,%al
 80497f9:	74 27                	je     8049822 <submitr+0x2e0>
 80497fb:	3c 2a                	cmp    $0x2a,%al
 80497fd:	0f 94 c1             	sete   %cl
 8049800:	8d 50 d3             	lea    -0x2d(%eax),%edx
 8049803:	80 fa 01             	cmp    $0x1,%dl
 8049806:	0f 96 c2             	setbe  %dl
 8049809:	08 d1                	or     %dl,%cl
 804980b:	75 15                	jne    8049822 <submitr+0x2e0>
 804980d:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049810:	80 fa 09             	cmp    $0x9,%dl
 8049813:	76 0d                	jbe    8049822 <submitr+0x2e0>
 8049815:	89 c2                	mov    %eax,%edx
 8049817:	83 e2 df             	and    $0xffffffdf,%edx
 804981a:	83 ea 41             	sub    $0x41,%edx
 804981d:	80 fa 19             	cmp    $0x19,%dl
 8049820:	77 07                	ja     8049829 <submitr+0x2e7>
 8049822:	88 07                	mov    %al,(%edi)
 8049824:	8d 7f 01             	lea    0x1(%edi),%edi
 8049827:	eb 5b                	jmp    8049884 <submitr+0x342>
 8049829:	3c 20                	cmp    $0x20,%al
 804982b:	75 08                	jne    8049835 <submitr+0x2f3>
 804982d:	c6 07 2b             	movb   $0x2b,(%edi)
 8049830:	8d 7f 01             	lea    0x1(%edi),%edi
 8049833:	eb 4f                	jmp    8049884 <submitr+0x342>
 8049835:	8d 50 e0             	lea    -0x20(%eax),%edx
 8049838:	80 fa 5f             	cmp    $0x5f,%dl
 804983b:	76 08                	jbe    8049845 <submitr+0x303>
 804983d:	3c 09                	cmp    $0x9,%al
 804983f:	0f 85 f5 03 00 00    	jne    8049c3a <submitr+0x6f8>
 8049845:	83 ec 0c             	sub    $0xc,%esp
 8049848:	0f b6 c0             	movzbl %al,%eax
 804984b:	50                   	push   %eax
 804984c:	68 c0 a6 04 08       	push   $0x804a6c0
 8049851:	6a 08                	push   $0x8
 8049853:	6a 01                	push   $0x1
 8049855:	8d 85 e4 df ff ff    	lea    -0x201c(%ebp),%eax
 804985b:	50                   	push   %eax
 804985c:	e8 df f1 ff ff       	call   8048a40 <__sprintf_chk@plt>
 8049861:	0f b6 85 e4 df ff ff 	movzbl -0x201c(%ebp),%eax
 8049868:	88 07                	mov    %al,(%edi)
 804986a:	0f b6 85 e5 df ff ff 	movzbl -0x201b(%ebp),%eax
 8049871:	88 47 01             	mov    %al,0x1(%edi)
 8049874:	0f b6 85 e6 df ff ff 	movzbl -0x201a(%ebp),%eax
 804987b:	88 47 02             	mov    %al,0x2(%edi)
 804987e:	83 c4 20             	add    $0x20,%esp
 8049881:	8d 7f 03             	lea    0x3(%edi),%edi
 8049884:	83 c3 01             	add    $0x1,%ebx
 8049887:	83 ee 01             	sub    $0x1,%esi
 804988a:	0f 85 64 ff ff ff    	jne    80497f4 <submitr+0x2b2>
 8049890:	e9 ed 03 00 00       	jmp    8049c82 <submitr+0x740>
 8049895:	89 bd b0 5f ff ff    	mov    %edi,-0xa050(%ebp)
 804989b:	8b bd b4 5f ff ff    	mov    -0xa04c(%ebp),%edi
 80498a1:	83 ec 04             	sub    $0x4,%esp
 80498a4:	53                   	push   %ebx
 80498a5:	56                   	push   %esi
 80498a6:	57                   	push   %edi
 80498a7:	e8 94 f0 ff ff       	call   8048940 <write@plt>
 80498ac:	83 c4 10             	add    $0x10,%esp
 80498af:	85 c0                	test   %eax,%eax
 80498b1:	7f 0f                	jg     80498c2 <submitr+0x380>
 80498b3:	e8 e8 f0 ff ff       	call   80489a0 <__errno_location@plt>
 80498b8:	83 38 04             	cmpl   $0x4,(%eax)
 80498bb:	75 15                	jne    80498d2 <submitr+0x390>
 80498bd:	b8 00 00 00 00       	mov    $0x0,%eax
 80498c2:	01 c6                	add    %eax,%esi
 80498c4:	29 c3                	sub    %eax,%ebx
 80498c6:	75 d9                	jne    80498a1 <submitr+0x35f>
 80498c8:	8b bd b0 5f ff ff    	mov    -0xa050(%ebp),%edi
 80498ce:	85 ff                	test   %edi,%edi
 80498d0:	79 6d                	jns    804993f <submitr+0x3fd>
 80498d2:	8b 85 a4 5f ff ff    	mov    -0xa05c(%ebp),%eax
 80498d8:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80498de:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80498e5:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80498ec:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80498f3:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80498fa:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049901:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 8049908:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 804990f:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 8049916:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 804991d:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 8049924:	83 ec 0c             	sub    $0xc,%esp
 8049927:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 804992d:	e8 ee f0 ff ff       	call   8048a20 <close@plt>
 8049932:	83 c4 10             	add    $0x10,%esp
 8049935:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804993a:	e9 e6 02 00 00       	jmp    8049c25 <submitr+0x6e3>
 804993f:	8b 85 b4 5f ff ff    	mov    -0xa04c(%ebp),%eax
 8049945:	89 85 d8 5f ff ff    	mov    %eax,-0xa028(%ebp)
 804994b:	c7 85 dc 5f ff ff 00 	movl   $0x0,-0xa024(%ebp)
 8049952:	00 00 00 
 8049955:	8d 85 e4 5f ff ff    	lea    -0xa01c(%ebp),%eax
 804995b:	89 85 e0 5f ff ff    	mov    %eax,-0xa020(%ebp)
 8049961:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049966:	8d 95 e4 7f ff ff    	lea    -0x801c(%ebp),%edx
 804996c:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 8049972:	e8 a6 fa ff ff       	call   804941d <rio_readlineb>
 8049977:	85 c0                	test   %eax,%eax
 8049979:	0f 8f 81 00 00 00    	jg     8049a00 <submitr+0x4be>
 804997f:	8b 85 a4 5f ff ff    	mov    -0xa05c(%ebp),%eax
 8049985:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804998b:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049992:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049999:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80499a0:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80499a7:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80499ae:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 80499b5:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 80499bc:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 80499c3:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 80499ca:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 80499d1:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 80499d8:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 80499df:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 80499e5:	83 ec 0c             	sub    $0xc,%esp
 80499e8:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80499ee:	e8 2d f0 ff ff       	call   8048a20 <close@plt>
 80499f3:	83 c4 10             	add    $0x10,%esp
 80499f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499fb:	e9 25 02 00 00       	jmp    8049c25 <submitr+0x6e3>
 8049a00:	83 ec 0c             	sub    $0xc,%esp
 8049a03:	8d 85 e4 df ff ff    	lea    -0x201c(%ebp),%eax
 8049a09:	50                   	push   %eax
 8049a0a:	8d 85 c4 5f ff ff    	lea    -0xa03c(%ebp),%eax
 8049a10:	50                   	push   %eax
 8049a11:	8d 85 e4 bf ff ff    	lea    -0x401c(%ebp),%eax
 8049a17:	50                   	push   %eax
 8049a18:	68 c7 a6 04 08       	push   $0x804a6c7
 8049a1d:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 8049a23:	50                   	push   %eax
 8049a24:	e8 47 ef ff ff       	call   8048970 <__isoc99_sscanf@plt>
 8049a29:	8b 85 c4 5f ff ff    	mov    -0xa03c(%ebp),%eax
 8049a2f:	83 c4 20             	add    $0x20,%esp
 8049a32:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049a37:	0f 84 cc 00 00 00    	je     8049b09 <submitr+0x5c7>
 8049a3d:	83 ec 08             	sub    $0x8,%esp
 8049a40:	8d 95 e4 df ff ff    	lea    -0x201c(%ebp),%edx
 8049a46:	52                   	push   %edx
 8049a47:	50                   	push   %eax
 8049a48:	68 d4 a5 04 08       	push   $0x804a5d4
 8049a4d:	6a ff                	push   $0xffffffff
 8049a4f:	6a 01                	push   $0x1
 8049a51:	ff b5 a4 5f ff ff    	pushl  -0xa05c(%ebp)
 8049a57:	e8 e4 ef ff ff       	call   8048a40 <__sprintf_chk@plt>
 8049a5c:	83 c4 14             	add    $0x14,%esp
 8049a5f:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049a65:	e8 b6 ef ff ff       	call   8048a20 <close@plt>
 8049a6a:	83 c4 10             	add    $0x10,%esp
 8049a6d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a72:	e9 ae 01 00 00       	jmp    8049c25 <submitr+0x6e3>
 8049a77:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049a7c:	8d 95 e4 7f ff ff    	lea    -0x801c(%ebp),%edx
 8049a82:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 8049a88:	e8 90 f9 ff ff       	call   804941d <rio_readlineb>
 8049a8d:	85 c0                	test   %eax,%eax
 8049a8f:	7f 78                	jg     8049b09 <submitr+0x5c7>
 8049a91:	8b 85 a4 5f ff ff    	mov    -0xa05c(%ebp),%eax
 8049a97:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049a9d:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049aa4:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049aab:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049ab2:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049ab9:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049ac0:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049ac7:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 8049ace:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 8049ad5:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 8049adc:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 8049ae3:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 8049aea:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 8049aee:	83 ec 0c             	sub    $0xc,%esp
 8049af1:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049af7:	e8 24 ef ff ff       	call   8048a20 <close@plt>
 8049afc:	83 c4 10             	add    $0x10,%esp
 8049aff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b04:	e9 1c 01 00 00       	jmp    8049c25 <submitr+0x6e3>
 8049b09:	80 bd e4 7f ff ff 0d 	cmpb   $0xd,-0x801c(%ebp)
 8049b10:	0f 85 61 ff ff ff    	jne    8049a77 <submitr+0x535>
 8049b16:	80 bd e5 7f ff ff 0a 	cmpb   $0xa,-0x801b(%ebp)
 8049b1d:	0f 85 54 ff ff ff    	jne    8049a77 <submitr+0x535>
 8049b23:	80 bd e6 7f ff ff 00 	cmpb   $0x0,-0x801a(%ebp)
 8049b2a:	0f 85 47 ff ff ff    	jne    8049a77 <submitr+0x535>
 8049b30:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049b35:	8d 95 e4 7f ff ff    	lea    -0x801c(%ebp),%edx
 8049b3b:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 8049b41:	e8 d7 f8 ff ff       	call   804941d <rio_readlineb>
 8049b46:	85 c0                	test   %eax,%eax
 8049b48:	7f 7f                	jg     8049bc9 <submitr+0x687>
 8049b4a:	8b 85 a4 5f ff ff    	mov    -0xa05c(%ebp),%eax
 8049b50:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049b56:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049b5d:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049b64:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049b6b:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049b72:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049b79:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049b80:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 8049b87:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049b8e:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049b95:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 8049b9c:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049ba3:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049baa:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049bb1:	83 ec 0c             	sub    $0xc,%esp
 8049bb4:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049bba:	e8 61 ee ff ff       	call   8048a20 <close@plt>
 8049bbf:	83 c4 10             	add    $0x10,%esp
 8049bc2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049bc7:	eb 5c                	jmp    8049c25 <submitr+0x6e3>
 8049bc9:	83 ec 08             	sub    $0x8,%esp
 8049bcc:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 8049bd2:	50                   	push   %eax
 8049bd3:	8b b5 a4 5f ff ff    	mov    -0xa05c(%ebp),%esi
 8049bd9:	56                   	push   %esi
 8049bda:	e8 b1 ec ff ff       	call   8048890 <strcpy@plt>
 8049bdf:	83 c4 04             	add    $0x4,%esp
 8049be2:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049be8:	e8 33 ee ff ff       	call   8048a20 <close@plt>
 8049bed:	0f b6 16             	movzbl (%esi),%edx
 8049bf0:	b8 4f 00 00 00       	mov    $0x4f,%eax
 8049bf5:	83 c4 10             	add    $0x10,%esp
 8049bf8:	29 d0                	sub    %edx,%eax
 8049bfa:	75 1f                	jne    8049c1b <submitr+0x6d9>
 8049bfc:	8b 85 a4 5f ff ff    	mov    -0xa05c(%ebp),%eax
 8049c02:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 8049c06:	b8 4b 00 00 00       	mov    $0x4b,%eax
 8049c0b:	29 d0                	sub    %edx,%eax
 8049c0d:	75 0c                	jne    8049c1b <submitr+0x6d9>
 8049c0f:	8b 85 a4 5f ff ff    	mov    -0xa05c(%ebp),%eax
 8049c15:	0f b6 40 02          	movzbl 0x2(%eax),%eax
 8049c19:	f7 d8                	neg    %eax
 8049c1b:	85 c0                	test   %eax,%eax
 8049c1d:	0f 95 c0             	setne  %al
 8049c20:	0f b6 c0             	movzbl %al,%eax
 8049c23:	f7 d8                	neg    %eax
 8049c25:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 8049c28:	65 33 35 14 00 00 00 	xor    %gs:0x14,%esi
 8049c2f:	0f 84 ac 00 00 00    	je     8049ce1 <submitr+0x79f>
 8049c35:	e9 a2 00 00 00       	jmp    8049cdc <submitr+0x79a>
 8049c3a:	a1 04 a6 04 08       	mov    0x804a604,%eax
 8049c3f:	8b b5 a4 5f ff ff    	mov    -0xa05c(%ebp),%esi
 8049c45:	89 06                	mov    %eax,(%esi)
 8049c47:	a1 43 a6 04 08       	mov    0x804a643,%eax
 8049c4c:	89 46 3f             	mov    %eax,0x3f(%esi)
 8049c4f:	8d 7e 04             	lea    0x4(%esi),%edi
 8049c52:	83 e7 fc             	and    $0xfffffffc,%edi
 8049c55:	29 fe                	sub    %edi,%esi
 8049c57:	89 f0                	mov    %esi,%eax
 8049c59:	be 04 a6 04 08       	mov    $0x804a604,%esi
 8049c5e:	29 c6                	sub    %eax,%esi
 8049c60:	83 c0 43             	add    $0x43,%eax
 8049c63:	c1 e8 02             	shr    $0x2,%eax
 8049c66:	89 c1                	mov    %eax,%ecx
 8049c68:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049c6a:	83 ec 0c             	sub    $0xc,%esp
 8049c6d:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049c73:	e8 a8 ed ff ff       	call   8048a20 <close@plt>
 8049c78:	83 c4 10             	add    $0x10,%esp
 8049c7b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c80:	eb a3                	jmp    8049c25 <submitr+0x6e3>
 8049c82:	8d 85 e4 9f ff ff    	lea    -0x601c(%ebp),%eax
 8049c88:	50                   	push   %eax
 8049c89:	ff b5 a8 5f ff ff    	pushl  -0xa058(%ebp)
 8049c8f:	ff b5 ac 5f ff ff    	pushl  -0xa054(%ebp)
 8049c95:	ff b5 b0 5f ff ff    	pushl  -0xa050(%ebp)
 8049c9b:	68 48 a6 04 08       	push   $0x804a648
 8049ca0:	68 00 20 00 00       	push   $0x2000
 8049ca5:	6a 01                	push   $0x1
 8049ca7:	8d bd e4 7f ff ff    	lea    -0x801c(%ebp),%edi
 8049cad:	57                   	push   %edi
 8049cae:	e8 8d ed ff ff       	call   8048a40 <__sprintf_chk@plt>
 8049cb3:	b8 00 00 00 00       	mov    $0x0,%eax
 8049cb8:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049cbd:	f2 ae                	repnz scas %es:(%edi),%al
 8049cbf:	f7 d1                	not    %ecx
 8049cc1:	8d 79 ff             	lea    -0x1(%ecx),%edi
 8049cc4:	83 c4 20             	add    $0x20,%esp
 8049cc7:	89 fb                	mov    %edi,%ebx
 8049cc9:	8d b5 e4 7f ff ff    	lea    -0x801c(%ebp),%esi
 8049ccf:	85 ff                	test   %edi,%edi
 8049cd1:	0f 85 be fb ff ff    	jne    8049895 <submitr+0x353>
 8049cd7:	e9 63 fc ff ff       	jmp    804993f <submitr+0x3fd>
 8049cdc:	e8 7f eb ff ff       	call   8048860 <__stack_chk_fail@plt>
 8049ce1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049ce4:	5b                   	pop    %ebx
 8049ce5:	5e                   	pop    %esi
 8049ce6:	5f                   	pop    %edi
 8049ce7:	5d                   	pop    %ebp
 8049ce8:	c3                   	ret    

08049ce9 <init_timeout>:
 8049ce9:	55                   	push   %ebp
 8049cea:	89 e5                	mov    %esp,%ebp
 8049cec:	53                   	push   %ebx
 8049ced:	83 ec 04             	sub    $0x4,%esp
 8049cf0:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8049cf3:	85 db                	test   %ebx,%ebx
 8049cf5:	74 24                	je     8049d1b <init_timeout+0x32>
 8049cf7:	85 db                	test   %ebx,%ebx
 8049cf9:	b8 02 00 00 00       	mov    $0x2,%eax
 8049cfe:	0f 48 d8             	cmovs  %eax,%ebx
 8049d01:	83 ec 08             	sub    $0x8,%esp
 8049d04:	68 fd 93 04 08       	push   $0x80493fd
 8049d09:	6a 0e                	push   $0xe
 8049d0b:	e8 30 eb ff ff       	call   8048840 <signal@plt>
 8049d10:	89 1c 24             	mov    %ebx,(%esp)
 8049d13:	e8 38 eb ff ff       	call   8048850 <alarm@plt>
 8049d18:	83 c4 10             	add    $0x10,%esp
 8049d1b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049d1e:	c9                   	leave  
 8049d1f:	c3                   	ret    

08049d20 <init_driver>:
 8049d20:	55                   	push   %ebp
 8049d21:	89 e5                	mov    %esp,%ebp
 8049d23:	57                   	push   %edi
 8049d24:	56                   	push   %esi
 8049d25:	53                   	push   %ebx
 8049d26:	83 ec 34             	sub    $0x34,%esp
 8049d29:	8b 75 08             	mov    0x8(%ebp),%esi
 8049d2c:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049d32:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049d35:	31 c0                	xor    %eax,%eax
 8049d37:	6a 01                	push   $0x1
 8049d39:	6a 0d                	push   $0xd
 8049d3b:	e8 00 eb ff ff       	call   8048840 <signal@plt>
 8049d40:	83 c4 08             	add    $0x8,%esp
 8049d43:	6a 01                	push   $0x1
 8049d45:	6a 1d                	push   $0x1d
 8049d47:	e8 f4 ea ff ff       	call   8048840 <signal@plt>
 8049d4c:	83 c4 08             	add    $0x8,%esp
 8049d4f:	6a 01                	push   $0x1
 8049d51:	6a 1d                	push   $0x1d
 8049d53:	e8 e8 ea ff ff       	call   8048840 <signal@plt>
 8049d58:	83 c4 0c             	add    $0xc,%esp
 8049d5b:	6a 00                	push   $0x0
 8049d5d:	6a 01                	push   $0x1
 8049d5f:	6a 02                	push   $0x2
 8049d61:	e8 7a ec ff ff       	call   80489e0 <socket@plt>
 8049d66:	89 c3                	mov    %eax,%ebx
 8049d68:	83 c4 10             	add    $0x10,%esp
 8049d6b:	85 c0                	test   %eax,%eax
 8049d6d:	79 4e                	jns    8049dbd <init_driver+0x9d>
 8049d6f:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049d75:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049d7c:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049d83:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049d8a:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049d91:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049d98:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 8049d9f:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 8049da6:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 8049dad:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 8049db3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049db8:	e9 db 00 00 00       	jmp    8049e98 <init_driver+0x178>
 8049dbd:	83 ec 0c             	sub    $0xc,%esp
 8049dc0:	68 d8 a6 04 08       	push   $0x804a6d8
 8049dc5:	e8 36 ec ff ff       	call   8048a00 <gethostbyname@plt>
 8049dca:	83 c4 10             	add    $0x10,%esp
 8049dcd:	85 c0                	test   %eax,%eax
 8049dcf:	75 2d                	jne    8049dfe <init_driver+0xde>
 8049dd1:	83 ec 0c             	sub    $0xc,%esp
 8049dd4:	68 d8 a6 04 08       	push   $0x804a6d8
 8049dd9:	68 80 a5 04 08       	push   $0x804a580
 8049dde:	6a ff                	push   $0xffffffff
 8049de0:	6a 01                	push   $0x1
 8049de2:	56                   	push   %esi
 8049de3:	e8 58 ec ff ff       	call   8048a40 <__sprintf_chk@plt>
 8049de8:	83 c4 14             	add    $0x14,%esp
 8049deb:	53                   	push   %ebx
 8049dec:	e8 2f ec ff ff       	call   8048a20 <close@plt>
 8049df1:	83 c4 10             	add    $0x10,%esp
 8049df4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049df9:	e9 9a 00 00 00       	jmp    8049e98 <init_driver+0x178>
 8049dfe:	8d 7d d4             	lea    -0x2c(%ebp),%edi
 8049e01:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049e08:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 8049e0f:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 8049e16:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 8049e1d:	66 c7 45 d4 02 00    	movw   $0x2,-0x2c(%ebp)
 8049e23:	6a 0c                	push   $0xc
 8049e25:	ff 70 0c             	pushl  0xc(%eax)
 8049e28:	8b 40 10             	mov    0x10(%eax),%eax
 8049e2b:	ff 30                	pushl  (%eax)
 8049e2d:	8d 45 d8             	lea    -0x28(%ebp),%eax
 8049e30:	50                   	push   %eax
 8049e31:	e8 9a ea ff ff       	call   80488d0 <__memmove_chk@plt>
 8049e36:	66 c7 45 d6 47 26    	movw   $0x2647,-0x2a(%ebp)
 8049e3c:	83 c4 0c             	add    $0xc,%esp
 8049e3f:	6a 10                	push   $0x10
 8049e41:	57                   	push   %edi
 8049e42:	53                   	push   %ebx
 8049e43:	e8 c8 eb ff ff       	call   8048a10 <connect@plt>
 8049e48:	83 c4 10             	add    $0x10,%esp
 8049e4b:	85 c0                	test   %eax,%eax
 8049e4d:	79 2f                	jns    8049e7e <init_driver+0x15e>
 8049e4f:	83 ec 08             	sub    $0x8,%esp
 8049e52:	68 26 47 00 00       	push   $0x4726
 8049e57:	68 d8 a6 04 08       	push   $0x804a6d8
 8049e5c:	68 94 a6 04 08       	push   $0x804a694
 8049e61:	6a ff                	push   $0xffffffff
 8049e63:	6a 01                	push   $0x1
 8049e65:	56                   	push   %esi
 8049e66:	e8 d5 eb ff ff       	call   8048a40 <__sprintf_chk@plt>
 8049e6b:	83 c4 14             	add    $0x14,%esp
 8049e6e:	53                   	push   %ebx
 8049e6f:	e8 ac eb ff ff       	call   8048a20 <close@plt>
 8049e74:	83 c4 10             	add    $0x10,%esp
 8049e77:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049e7c:	eb 1a                	jmp    8049e98 <init_driver+0x178>
 8049e7e:	83 ec 0c             	sub    $0xc,%esp
 8049e81:	53                   	push   %ebx
 8049e82:	e8 99 eb ff ff       	call   8048a20 <close@plt>
 8049e87:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 8049e8c:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 8049e90:	83 c4 10             	add    $0x10,%esp
 8049e93:	b8 00 00 00 00       	mov    $0x0,%eax
 8049e98:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8049e9b:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8049ea2:	74 05                	je     8049ea9 <init_driver+0x189>
 8049ea4:	e8 b7 e9 ff ff       	call   8048860 <__stack_chk_fail@plt>
 8049ea9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049eac:	5b                   	pop    %ebx
 8049ead:	5e                   	pop    %esi
 8049eae:	5f                   	pop    %edi
 8049eaf:	5d                   	pop    %ebp
 8049eb0:	c3                   	ret    

08049eb1 <driver_post>:
 8049eb1:	55                   	push   %ebp
 8049eb2:	89 e5                	mov    %esp,%ebp
 8049eb4:	53                   	push   %ebx
 8049eb5:	83 ec 04             	sub    $0x4,%esp
 8049eb8:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ebb:	8b 5d 14             	mov    0x14(%ebp),%ebx
 8049ebe:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 8049ec2:	74 25                	je     8049ee9 <driver_post+0x38>
 8049ec4:	83 ec 04             	sub    $0x4,%esp
 8049ec7:	ff 75 0c             	pushl  0xc(%ebp)
 8049eca:	68 eb a6 04 08       	push   $0x804a6eb
 8049ecf:	6a 01                	push   $0x1
 8049ed1:	e8 ea ea ff ff       	call   80489c0 <__printf_chk@plt>
 8049ed6:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049edb:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049edf:	83 c4 10             	add    $0x10,%esp
 8049ee2:	b8 00 00 00 00       	mov    $0x0,%eax
 8049ee7:	eb 3d                	jmp    8049f26 <driver_post+0x75>
 8049ee9:	85 c0                	test   %eax,%eax
 8049eeb:	74 2b                	je     8049f18 <driver_post+0x67>
 8049eed:	80 38 00             	cmpb   $0x0,(%eax)
 8049ef0:	74 26                	je     8049f18 <driver_post+0x67>
 8049ef2:	83 ec 04             	sub    $0x4,%esp
 8049ef5:	53                   	push   %ebx
 8049ef6:	ff 75 0c             	pushl  0xc(%ebp)
 8049ef9:	68 02 a7 04 08       	push   $0x804a702
 8049efe:	50                   	push   %eax
 8049eff:	68 09 a7 04 08       	push   $0x804a709
 8049f04:	68 26 47 00 00       	push   $0x4726
 8049f09:	68 d8 a6 04 08       	push   $0x804a6d8
 8049f0e:	e8 2f f6 ff ff       	call   8049542 <submitr>
 8049f13:	83 c4 20             	add    $0x20,%esp
 8049f16:	eb 0e                	jmp    8049f26 <driver_post+0x75>
 8049f18:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049f1d:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049f21:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f26:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049f29:	c9                   	leave  
 8049f2a:	c3                   	ret    

08049f2b <hash>:
 8049f2b:	55                   	push   %ebp
 8049f2c:	89 e5                	mov    %esp,%ebp
 8049f2e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049f31:	0f b6 11             	movzbl (%ecx),%edx
 8049f34:	84 d2                	test   %dl,%dl
 8049f36:	74 19                	je     8049f51 <hash+0x26>
 8049f38:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f3d:	6b c0 67             	imul   $0x67,%eax,%eax
 8049f40:	83 c1 01             	add    $0x1,%ecx
 8049f43:	0f be d2             	movsbl %dl,%edx
 8049f46:	01 d0                	add    %edx,%eax
 8049f48:	0f b6 11             	movzbl (%ecx),%edx
 8049f4b:	84 d2                	test   %dl,%dl
 8049f4d:	75 ee                	jne    8049f3d <hash+0x12>
 8049f4f:	eb 05                	jmp    8049f56 <hash+0x2b>
 8049f51:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f56:	5d                   	pop    %ebp
 8049f57:	c3                   	ret    

08049f58 <check>:
 8049f58:	55                   	push   %ebp
 8049f59:	89 e5                	mov    %esp,%ebp
 8049f5b:	8b 55 08             	mov    0x8(%ebp),%edx
 8049f5e:	89 d1                	mov    %edx,%ecx
 8049f60:	c1 e9 1c             	shr    $0x1c,%ecx
 8049f63:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f68:	85 c9                	test   %ecx,%ecx
 8049f6a:	74 2d                	je     8049f99 <check+0x41>
 8049f6c:	80 fa 0a             	cmp    $0xa,%dl
 8049f6f:	74 1c                	je     8049f8d <check+0x35>
 8049f71:	b9 08 00 00 00       	mov    $0x8,%ecx
 8049f76:	89 d0                	mov    %edx,%eax
 8049f78:	d3 e8                	shr    %cl,%eax
 8049f7a:	3c 0a                	cmp    $0xa,%al
 8049f7c:	74 16                	je     8049f94 <check+0x3c>
 8049f7e:	83 c1 08             	add    $0x8,%ecx
 8049f81:	83 f9 20             	cmp    $0x20,%ecx
 8049f84:	75 f0                	jne    8049f76 <check+0x1e>
 8049f86:	b8 01 00 00 00       	mov    $0x1,%eax
 8049f8b:	eb 0c                	jmp    8049f99 <check+0x41>
 8049f8d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f92:	eb 05                	jmp    8049f99 <check+0x41>
 8049f94:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f99:	5d                   	pop    %ebp
 8049f9a:	c3                   	ret    

08049f9b <gencookie>:
 8049f9b:	55                   	push   %ebp
 8049f9c:	89 e5                	mov    %esp,%ebp
 8049f9e:	53                   	push   %ebx
 8049f9f:	83 ec 04             	sub    $0x4,%esp
 8049fa2:	ff 75 08             	pushl  0x8(%ebp)
 8049fa5:	e8 81 ff ff ff       	call   8049f2b <hash>
 8049faa:	83 ec 08             	sub    $0x8,%esp
 8049fad:	50                   	push   %eax
 8049fae:	e8 5d e9 ff ff       	call   8048910 <srand@plt>
 8049fb3:	83 c4 10             	add    $0x10,%esp
 8049fb6:	e8 f5 e9 ff ff       	call   80489b0 <rand@plt>
 8049fbb:	89 c3                	mov    %eax,%ebx
 8049fbd:	83 ec 0c             	sub    $0xc,%esp
 8049fc0:	50                   	push   %eax
 8049fc1:	e8 92 ff ff ff       	call   8049f58 <check>
 8049fc6:	83 c4 10             	add    $0x10,%esp
 8049fc9:	85 c0                	test   %eax,%eax
 8049fcb:	74 e9                	je     8049fb6 <gencookie+0x1b>
 8049fcd:	89 d8                	mov    %ebx,%eax
 8049fcf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049fd2:	c9                   	leave  
 8049fd3:	c3                   	ret    
 8049fd4:	66 90                	xchg   %ax,%ax
 8049fd6:	66 90                	xchg   %ax,%ax
 8049fd8:	66 90                	xchg   %ax,%ax
 8049fda:	66 90                	xchg   %ax,%ax
 8049fdc:	66 90                	xchg   %ax,%ax
 8049fde:	66 90                	xchg   %ax,%ax

08049fe0 <__libc_csu_init>:
 8049fe0:	55                   	push   %ebp
 8049fe1:	57                   	push   %edi
 8049fe2:	31 ff                	xor    %edi,%edi
 8049fe4:	56                   	push   %esi
 8049fe5:	53                   	push   %ebx
 8049fe6:	e8 95 ea ff ff       	call   8048a80 <__x86.get_pc_thunk.bx>
 8049feb:	81 c3 15 20 00 00    	add    $0x2015,%ebx
 8049ff1:	83 ec 1c             	sub    $0x1c,%esp
 8049ff4:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8049ff8:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 8049ffe:	e8 e1 e7 ff ff       	call   80487e4 <_init>
 804a003:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 804a009:	29 c6                	sub    %eax,%esi
 804a00b:	c1 fe 02             	sar    $0x2,%esi
 804a00e:	85 f6                	test   %esi,%esi
 804a010:	74 27                	je     804a039 <__libc_csu_init+0x59>
 804a012:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a018:	8b 44 24 38          	mov    0x38(%esp),%eax
 804a01c:	89 2c 24             	mov    %ebp,(%esp)
 804a01f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a023:	8b 44 24 34          	mov    0x34(%esp),%eax
 804a027:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a02b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804a032:	83 c7 01             	add    $0x1,%edi
 804a035:	39 f7                	cmp    %esi,%edi
 804a037:	75 df                	jne    804a018 <__libc_csu_init+0x38>
 804a039:	83 c4 1c             	add    $0x1c,%esp
 804a03c:	5b                   	pop    %ebx
 804a03d:	5e                   	pop    %esi
 804a03e:	5f                   	pop    %edi
 804a03f:	5d                   	pop    %ebp
 804a040:	c3                   	ret    
 804a041:	eb 0d                	jmp    804a050 <__libc_csu_fini>
 804a043:	90                   	nop
 804a044:	90                   	nop
 804a045:	90                   	nop
 804a046:	90                   	nop
 804a047:	90                   	nop
 804a048:	90                   	nop
 804a049:	90                   	nop
 804a04a:	90                   	nop
 804a04b:	90                   	nop
 804a04c:	90                   	nop
 804a04d:	90                   	nop
 804a04e:	90                   	nop
 804a04f:	90                   	nop

0804a050 <__libc_csu_fini>:
 804a050:	f3 c3                	repz ret 

Disassembly of section .fini:

0804a054 <_fini>:
 804a054:	53                   	push   %ebx
 804a055:	83 ec 08             	sub    $0x8,%esp
 804a058:	e8 23 ea ff ff       	call   8048a80 <__x86.get_pc_thunk.bx>
 804a05d:	81 c3 a3 1f 00 00    	add    $0x1fa3,%ebx
 804a063:	83 c4 08             	add    $0x8,%esp
 804a066:	5b                   	pop    %ebx
 804a067:	c3                   	ret    
