mkdir /home/sebelum_masehi/UI-2-ParallelProgramming/hpcg/build_linux
cd /home/sebelum_masehi/UI-2-ParallelProgramming/hpcg/build_linux
/home/sebelum_masehi/UI-2-ParallelProgramming/hpcg/configure Linux_MPI
make
cp /home/sebelum_masehi/UI-2-ParallelProgramming/hpcg.dat /home/sebelum_masehi/UI-2-ParallelProgramming/hpcg/build_linux/bin/
mpirun --hostfile /home/sebelum_masehi/UI-2-ParallelProgramming/google-hosts -np 2 ./bin/xhpcg