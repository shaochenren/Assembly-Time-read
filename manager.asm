;===================================================================================================================================== 
;Program Name: manager.asm                                                                                                 *
;Programming Language: x86 Assembly                                                                                        *
;Program Description: This program asks the user to enter numbers into an array (followed by the enter key).               *
;The user is to put as many numbers as they can inside the array until Ctrl+D is pressed, so the program can               * 
;stop the user from doing so. When the user enters in numbers, anything entred that is NOT an integer will                 *
;not be put inside of the array. If the array is full, the program automatically stops the user from entering input.       * 
;After the numbers are entered, the program returns the sum of all of the integers and how many items are put              *
;in the array.                                                                                                             * 
;Author: Shaochen Ren                                                                                                      *
;Email: renleo@csu.fullerton.edu                                                                                           *
;Institution: California State University, Fullerton                                                                       * 
;Course: CPSC 240-05                                                                                                       *
;Start Date: 20 September, 2020                                                                                            *
;Copyright (C) 2020 Shaochen Ren                                                                                           *
;This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License * 
;version 3 as published by the Free Software Foundation.                                                                   *
;This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied        * 
;Warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.    * 
;A copy of the GNU General Public License v3 is available here:  <https://www.gnu.org/licenses/>. ;======================================================================================================================================
;//
;//
;//
;//
;//===== Begin code area ===========================================================================================================

extern printf
extern scanf
extern input_array
extern display_array
extern reverse
global manager

section .data
welcomeMessage db "Welcome to Arrays of Integers",10,0
authorIntro db "Brought to you by shaochenren",10,10,00
longIntFormat db "%ld",0
backIn db "Back in manager.", 10, 0
arrayDisplay db "These numbers were received and placed into the array:",10,0
Message db "The array has been sorted by the reverse order:",10,10,0

stringFormat db "%s", 0

section .bss
array: resq 100

section .text

manager:
;All the pushes and pops
push rbp
mov rbp, rsp ;now the base pointer(rbp) points to the top of the stack
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
pushf ;backup rflags

;registers rax, rip, and rsp are usually not backed up
;push qword -1

;push rbp
;push rdi
;push r13

;==================================
;display array function

mov rbp, rsp
;Print the welcome message
mov rdi, stringFormat
mov rsi, welcomeMessage
mov rax, 0
call printf
;===============================;
;Author introduction
mov rdi, stringFormat
mov rsi, authorIntro
mov rax, 0
call printf
;================================;
;MOVE INTO INPUT_ARRAY.ASM FILE
mov rdi, array ;puts array into rdi to get access in other files
call input_array
mov r13, rax ;holds the size of the array in r13

;=================================;
;PRINT ARRAY FUNCTION FROM DISPLAY_ARRAY.CPP
mov rdi, array
mov qword rsi, r13
mov rax, 0
call display_array

;===========================
;display array function

mov rbp, rsp
;Print the welcome message
mov rdi, stringFormat
mov rsi, arrayDisplay
mov rax, 0
call printf
;=================================;
;PRINT ARRAY FUNCTION FROM BubbleSort.c
mov rdi, array
mov qword rsi, r13
mov rax, 0
call reverse
;================================;
;display bubblesort function

mov rbp, rsp
;Print the welcome message
mov rdi, stringFormat
mov rsi, Message
mov rax, 0
call printf

;=================================;
;PRINT ARRAY FUNCTION FROM DISPLAY_ARRAY.CPP
mov rdi, array
mov qword rsi, r13
mov rax, 0
call display_array
;==============================
mov rax, r12


;Restore the original values to the general registers before returning to the caller
;pop rax
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
