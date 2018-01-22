wget http://www.mpich.org/static/downloads/3.2.1/mpich-3.2.1.tar.gz
tar -xzvf mpich-3.2.1.tar.gz
mv mpich-3.2.1 mpi
cd mpi
./configure --disable-fortran
make; sudo make install
mpiexec --version
cd root
vi .bashrc
export MPICC=/pmac/mpi/bin/mpicc




