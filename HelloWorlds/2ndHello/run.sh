#!/bin/bash

#Author: Michelle Olson
#Program name: bonjour.asm

rm *.o
rm *.out

echo "This is program bonjour.asm"

echo "Assemble bonjour.asm"
nasm -f elf64 -o bonjour.o bonjour.asm

echo "Link some files"
gcc -m64 -o bonjour.out bonjour.o -no-pie -std=c17

echo "Now run the program"
./bonjour.out
