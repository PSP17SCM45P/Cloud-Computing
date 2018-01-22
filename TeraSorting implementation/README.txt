Configuration 1:
1. SHARED MEMORY
-Generate data using Terasort
./gensort -a -tn 1280000000 input
- run the program 
g++  SharedMem.cpp -o sharemem
- run the runnable file
./sharemem

2. HADOOP
Compile the code
Bin/Hadoop com.sun.tools.javac.Main HadoopTera.java

Make a jar
Jar cf ts.jar HadoopTera*.class

Submit the job
Hadoop jar ts.jar HadoopTera <inputfile> <outfile>

3. SPARK
 -Run spark1.sh
 -edit using vi scala1.scala
 -compile scala1.scala using spark-shell -i scala1.scala
4. MPI
  -Run MPI.sh
  -use MPISort.cpp and copy to new .cpp 
  -compile sort1.c using mpicc sort1.c -o terasort
  -Run using mpirun -np 2 ./terasort 2 128GB_Input


Configuration 2:
1. SHARED MEMORY
-Generate data using Terasort
./gensort -a -tn 10000000000 input
- run the program 
g++  SharedMem.cpp -o sharemem
- run the runnable file
./sharemem

2. HADOOP
Compile the code
Bin/Hadoop com.sun.tools.javac.Main HadoopTera.java

Make a jar
Jar cf ts.jar HadoopTera*.class

Submit the job
Hadoop jar ts.jar HadoopTera <inputfile> <outfile>


3. SPARK
 -Run spark2.sh
 -edit using vi scala2.scala
 -compile scala2.scala using spark-shell -i scala2.scala
4. MPI
  -Run MPI.sh
  -use MPISort.cpp and copy to new .cpp
  -compile sort2.cpp using mpicc sort2.c -o terasort
  -Run using mpirun -np 16 ./terasort 16 1TB_Input
