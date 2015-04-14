#lea 0x14 (%esp), %ebp
#movl $0x34b2f5eb, %eax
#pushl $0x08048e1b
#ret

push $0x08048e1b
lea 0x1c(%esp), %ebp
movl $0x34b2f5eb, %eax
ret
