extern __errno_location
extern malloc
extern ft_strlen
extern ft_strcpy

global ft_strdup

ft_strdup:
	call ft_strlen
	push rdi
	inc rax
	mov rdi, rax
	call malloc
	cmp rax, 0
	je _error
	pop rsi
	mov rdi, rax
	call ft_strcpy
	ret

_error:
	mov r8, rax
	call __errno_location
	mov [rax], r8
	mov rax, -1
	ret
