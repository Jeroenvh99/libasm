extern __errno_location

global ft_read
ft_read:
	mov rax, 0x2000003
	syscall
	jc error
	ret
error:
	mov r8, rax
	call __errno_location
	mov [rax], r8
	mov rax, -1
	ret
