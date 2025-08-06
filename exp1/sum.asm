global _start
section .data
 resl db 0

section .text
 _start:
   mov eax, 5
   mov ebx, 2
   add eax, ebx
   
   add eax, '0'
   mov [resl], al
   
   mov eax, 4
   mov ebx, 1
   mov ecx, resl
   mov edx, 1
   int 80h
   
   xor ebx, ebx
   mov eax, 1
   int 80h
   
   
   
