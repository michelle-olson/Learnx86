;****************************************************************************************************************************
;Program name: "Hello World".  This program says hello world which is the classic beginner program of any language.         *
;This program is not my own but instead has been found on the website https://cs.lmu.edu/~ray/notes/nasmtutorial/ by Ray    *
;Toal. Any modifications by me are not his responsibility and have been made WITHOUT input by him.                          *
;This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License  *
;version 3 as published by the Free Software Foundation.                                                                    *
;                                                                                                                           *
;This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied         *
;warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.     *
;A copy of the GNU General Public License v3 is available here:  <https:;www.gnu.org/licenses/>.                            *
;****************************************************************************************************************************
;
; ----------------------------------------------------------------------------------------
;This file
;  Name: Helloworld.asm
;  Language: X86
;  Syntax: Intel
;  Purpose: Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
;  To assemble and run: nasm -felf64 helloworld.asm && ld helloworld.o && ./a.out
; ----------------------------------------------------------------------------------------

          global    _start

          section   .text
_start:   mov       rax, 1                  ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, message            ; address of string to output
          mov       rdx, 13                 ; number of bytes
          syscall                           ; invoke operating system to do the write
          mov       rax, 60                 ; system call for exit
          xor       rdi, rdi                ; exit code 0
          syscall                           ; invoke operating system to exit

          section   .data
message:  db        "Hello, World", 10      ; note the newline at the end
