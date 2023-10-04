filepath=`pwd`

sudo pkill redis-server
cd $filepath/7001
rm -f appendonly.aof dump.rdb nodes.config
sudo redis-server redis.conf --daemonize yes 
cd $filepath/7002
rm -f appendonly.aof dump.rdb nodes.config
sudo redis-server redis.conf --daemonize yes 
cd $filepath/7003
rm -f appendonly.aof dump.rdb nodes.config
sudo redis-server redis.conf --daemonize yes 
cd $filepath/7004
rm -f appendonly.aof dump.rdb nodes.config
sudo redis-server redis.conf --daemonize yes 
cd $filepath/7005
rm -f appendonly.aof dump.rdb nodes.config
sudo redis-server redis.conf --daemonize yes 
cd $filepath/7006
rm -f appendonly.aof dump.rdb nodes.config
sudo redis-server redis.conf --daemonize yes 
exit