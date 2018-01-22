sudo su -- super user
lsblk -- nvme0n1 - SSD which is unmounted, mount is and after every use mount it again.
sudo mkfs -t ext4 /dev/nvme0n1 -- for mounting the drive
cd -- 
cd / -- 
df -h -- 
sudo mkdir pp  -- 
sudo mount /dev/nvme0n1 /pmac -- 
tar -xvzf hadoop-2.7.2.tar.gz -- 
Mv Hadoop 2.7.2 hadoop
sudo apt-get install default-jdk
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install default-jdk
wget http://www.ordinal.com/try.cgi/gensort-linux-1.5.tar.gz
Tar -xvzf gensort-linux-1.5.tar.gz
cd 64 
./gensort -a 10000000000 1TB_Input
vi core-site.xml 
Vi hdfs-site.xml
Vi mapred-site.xml
Cd /pp/hadoop/sbin 
start-yarn.sh
start-dfs.sh 
start-all.sh
jps 
hdfs dfs -ls / 
Hdfs dfs -mkdir /input
hdfs dfs -copyFromLocal /pp/64/1TB_Input /input 
