#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "supply .asm file"
  exit
fi

nasm $1 -f bin -o boot_sec.bin

#show binary
od -t x1 -A n boot_sec.bin
echo ""

dd if=/dev/zero of=floppy.img ibs=1k count=1440
dd if=boot_sec.bin of=floppy.img conv=notrunc

echo ""
ls -l floppy.img
