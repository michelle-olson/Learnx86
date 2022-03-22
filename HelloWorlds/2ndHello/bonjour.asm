; ----------------------------------------------------------------------------------------
; Writes "Bonjour, monde" to the console using a C library. Runs on Linux.
;
;     nasm -felf64 bonjour.asm && gcc -m64 -no-pie bonjour.o -std=c17 && ./a.out
; ----------------------------------------------------------------------------------------

          global    main
          extern    puts

          section   .text
main:                                       ; This is called by the C library startup code
          mov       rdi, message            ; First integer (or pointer) argument in rdi
          call      puts                    ; puts(message)
          ret                               ; Return from main back into C library wrapper
message:
          db        "Bonjour, monde", 0        ; Note strings must be terminated with 0 in C
