
; Program Description: fast array summation faster than what C++ can provide, 
;					 	so i call assembly functions

; Author: 				austin lew

; Creation Date: 		10/17/19

; Revisions: 

; Date: 10/17/19             Modified by:

; Operating System: linux mint

; IDE/Compiler: g++

SECTION .data

;Include file for the functions library
;
sys_exit	equ	1h
sys_read	equ	3h
sys_write	equ	4h
stdin		equ	0h
stdout		equ	1h
stderr		equ	3h

SECTION .bss
SECTION .text

global addTwo
global multiplyTwo
global pow2
global addArray
global revArray
global addTwoArrays


addTwo:
	nop 							;
	mov eax, [esp+4]				;move first argument into eax
	mov edx, [esp+8]				;move second argument into edx
	add eax, edx 					;add edx into eax
	ret 							;return eax

multiplyTwo:
	nop 							;
	mov eax, [esp+4] 				;move first argument into eax
	mov edx, [esp+8] 				;move seconde argument into edx
	mul edx							;multiply edx into eax
	ret 							;return eax

pow2:
	nop 							;
	mov eax, [esp+4] 	 			;move first argument into eax
	mul eax 						;multiply eax by itself
	ret 							;return eax


addArray:
 	mov esi, [esp+4] 				;move address of first array into esi
 	mov ecx, [esp+8] 				;move size of array into ecx
 	mov edi, 0						;clear edi
 	mov eax, 0 						;clear eax
 	Loop1:  						;loop1 
 		add eax, [esi+edi] 			;move contents of array1 into eax
 		add edi, 4  				;increment edi by double word
 	loop Loop1						;end of loop1
 	ret

revArray:
	mov esi, [esp+4] 				;address of array1 into esi
	mov edi, [esp+8]				;address of array2 into edi
	mov ecx, [esp+12]				;put size into ecx
	mov edx, 0						;clear edx
	mov eax, 0						;clear eax
	Loop2:							;loop2
		mov eax, [esi+(ecx-1)*4]	;store value of array1 into eax
		mov [edi+edx], eax 			;store eax into array2
		add edx, 4 					;increment edx by double word
	loop Loop2						;end of loop2 
	ret
	

addTwoArrays: 	
	mov esi, [esp+4] 				;move address of first array into esi
 	mov edi, [esp+8] 				;move address of second array into edi
 	mov eax, [esp+12] 				;move address of third array into eax
 	mov ecx, [esp+16] 				;move size of arrays into ecx
 	mov edx, 0						;clear edx

 	; Loop2: 
 	; 	mov ebx, [eax+edx]
 	; 	add ebx, [esi+edx]
 	; 	add ebx, [edi+edx]
 	; 	mov [eax+edx], ebx
 	; 	add edx, 4
 	; loop Loop2


 	; protoLoop2:
 	; 	mov ebx, [esi+edx] 	;move value of array1 to ebx
 	; 	add [edi+edx], ebx	;add value of arr1 into arr2
 	; 	mov ebx, [edi+edx]	;move value of arr2 into ebx
 	; 	mov [eax+edx], ebx 	;move ebx into array3
 	; 	add edx, 4			;increment by double word
 	; loop protoLoop2

 	; protoLoop3:
 	; 	mov edx, [esi+(ecx-1)*4] 	;move value of array1 to ebx
 	; 	add [edi+(ecx-1)*4], edx	;add value of arr1 into arr2
 	; 	mov edx, [edi+(ecx-1)*4]	;move value of arr2 into ebx
 	; 	mov [eax+(ecx-1)*4], edx 	;move ebx into array3
 	; loop protoLoop3
 	


	 Loop3:
 		mov edx, [esi+(ecx-1)*4] 	;move value of array1 to edx
 		add edx, [edi+(ecx-1)*4] 	;add value of arr2 into edx
 		mov [eax+(ecx-1)*4], edx 	;move edx into array3
 	loop Loop3

 	ret