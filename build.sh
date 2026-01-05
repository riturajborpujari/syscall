#!/usr/bin/env bash
as syscall.s -o syscall.o
ld syscall.o -o a.out
