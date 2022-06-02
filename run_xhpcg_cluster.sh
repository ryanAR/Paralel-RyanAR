#!/bin/bash
#SBATCH -p batch
#SBATCH -N 8
#SBATCH --nodelist=node-01,node-02,node-03,node-04,node-05,node-06,node-07,node-08

mkdir /home/user20/UI-2-ParallelProgramming/hpcg/build_linux
cd /home/user20/UI-2-ParallelProgramming/hpcg/build_linux
/home/user20/UI-2-ParallelProgramming/hpcg/configure Linux_MPI
make
cp /home/user20/UI-2-ParallelProgramming/hpcg.dat /home/user20/UI-2-ParallelProgramming/hpcg/build_linux/bin/
mpirun --hostfile /home/user20/UI-2-ParallelProgramming/cluster-hosts -np 64 ./bin/xhpcg --mca btl_tcp_if_exclude docker0,lo