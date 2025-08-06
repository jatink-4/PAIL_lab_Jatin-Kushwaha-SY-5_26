global _start
section .data
  name db "Name: Jatin", 10
  name_len equ $ -name
  surname db "Surname: Kushwaha", 10
  surname_len equ $ -surname
  
section .text
%macro print 2
  mov eax, 4
  mov ebx, 1
  mov ecx, %1
  mov edx, %2
    int 0x80
%endmacro

 _start:
  print name, name_len
  print surname, surname_len
  
  xor ebx,ebx
  mov eax, 1
  int 80h
