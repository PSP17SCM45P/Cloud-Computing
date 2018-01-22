sudo su -- super user
lsblk -- nvme0n1 - SSD which is unmounted, mount is and after every use mount it again.
sudo mkfs -t ext4 /dev/nvme0n1 -- for mounting the drive
cd -- 
cd / -- 
df -h -- 
sudo mkdir pmac  -- 
sudo mount /dev/nvme0n1 /pmac -- 
tar -xvzf hadoop-2.7.2.tar.gz -- 
mv Hadoop 2.7.2 hadoop
sudo apt-get install default-jdk
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install default-jdk
Wget http://www.ordinal.com/try.cgi/gensort-linux-1.5.tar.gz
Tar -xvzf gensort-linux-1.5.tar.gz
cd 64 
./gensort -a 10000000000 1TB_Input
vi core-site.xml 
vi hdfs-site.xml
vi mapred-site.xml
cd /pmac/hadoop/sbin 
start-yarn.sh
start-dfs.sh 
start-all.sh
jps 
hdfs dfs -ls / 
hdfs dfs -mkdir /input
hdfs dfs -copyFromLocal /pmac/64/1TB_Input /input
wget https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz
tar zxvf spark-2.2.0-bin-hadoop2.7.tgz
mv spark-2.2.0-bin-hadoop2 spark
cd spark
cd bin
apt install spark
cd root
vi .bashrc
export SPARK_HOME=/opt/spark
PATH=$PATH:$SPARK_HOME/bin
export PATH
source .bashrc
cd spark 
cd conf
vi spark-default.conf
spark.local.dir /pmac/tmp/hadoop-${user.name}