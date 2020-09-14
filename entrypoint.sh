#!/bin/bash

for f in *.asm
do
  nasm -felf64 "$f"
  tmp=${f%.*}
  ld "$tmp.o"
  ./a.out
  rm "$tmp.o"
  rm a.out
done
