
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


