extern scanf
extern printf
extern swap

global reverse

section .data

section .bss

section .text

reverse:

;============ Pushes ============
push rbp
mov rbp, rsp
push rdi
push rsi
push rdx
push rcx
push r8
push r9
push r10
push r11
push r12
push r13
push r14
push r15
push rbx
pushf
push rax

;reverse=============================
mov r15, 0  
mov r12, rsi 
dec r12
mov r14, rdi 

;===========================
begin_loop:

;==================================
mov rdi, r14
mov rsi, r12
mov rdx, r15
call swap

;========================
inc r15
dec r12

;============ Comparisons ============
cmp r15, r12
jge end_loop   

jmp begin_loop

;endloop=================
end_loop:

;============ Pops ============
pop rax
popf
pop rbx
pop r15
pop r14
pop r13
pop r12
pop r11
pop r10
pop r9
pop r8
pop rcx
pop rdx
pop rsi
pop rdi
pop rbp
ret
