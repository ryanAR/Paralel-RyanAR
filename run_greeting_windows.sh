#!/bin/bash
mpicc greeting.c -o greeting.o
{ time mpirun --hostfile yoga-windows-hosts -np 8 greeting.o > greeting.out ; } 2> greeting.time