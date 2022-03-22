#!/bin/bash

#Author: Michelle Olson
#Program name: Hello.asm

rm *.o
rm *.out

echo "This is program hello.asm"

echo "Assemble and link hello.asm"

nasm -felf64 helloworld.asm && ld helloworld.o -o helloworld.out

echo "Now run the program"
./helloworld.out
