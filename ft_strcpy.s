global ft_strcpy
ft_strcpy:
	mov rcx, 0
loop:
	mov al, [rsi + rcx]
	mov [rdi + rcx], al
	inc rcx
	cmp al, 0
	jne loop
	jmp end
end:
	mov rax, rdi
	ret
