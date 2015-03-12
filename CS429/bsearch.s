	.section .data

	.align 4
myarry:
	.long 3
	.long 5
	.long 8
	.long 12
	.long 55
	.long 101
	.long 200

	.section .text
	.globl _start
_start: 
	pushl $6
	pushl $0
	pushl $12
	puchl $myarr
	call bsearch
	addl $16, %esp

	movl $1, %eax		#
	int &0x80			#interupt to OS

	.type bsearch, @function
bsearch:
	pushl %ebp
	movl %esp, %ebp				#create new stack frame

	pushl %ebx					# callee save
	pushl %edi
	pushl %esi

	movl 8(%ebp), %edi			#edi now has myarray
	movl 12(%ebp), %ebx			#ebx has x
	movl 16(%ebp), %ecx			#ecx has low
	movl 20(%ebp), %edx			#edx has high

	cmpl %ecx, %edx				#compare low and high
	ja	.L2

	movl %edx, %eax				#store high in temp
	addl %ecx, %eax				#eax = low + high
	shr	 %eax					#eax = eax / 2

	movl (%edi, %eax, 4), %esi	#esi = myar[eax]

	cmpl %ebx, %esi				#comapre mid to x
	ja .L3
	jb .L4

	jmp .finsh




.L2
	movl $-1, %eax
	jmp .finish

.L3
	decl %eax				# --i
	pushl %eax				#push i-1
	pushl %ecx				#push low
	pushl %ebx				#push x
	pushl %edi				#push myarr
	call bsearch
	addl $16, %esp			#reduces stack by 
	jmp .finish

.L4
	incl %eax				#i++
	pushl %edx				#push high
	pushl %eax				#pus i +1
	pushl %ebx
	pushl %edi
	call bsearch
	addl $16, $esp
	jmp .finish

.finsih
	addl $8, %esp			#decrease stack for 2 ints, 
	popl %esi
	popl %edi
	popl %ebx
	leave
	ret


