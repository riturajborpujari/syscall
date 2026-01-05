#!/usr/bin/env sh
as syscall.s -o syscall.o
ld syscall.o -o a.out
