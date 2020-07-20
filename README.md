# redis-cluster

## 说明

端口映射: 30080:8080

目录结构：

``` bash
redis-cluster/
├── docker-compose.yml
├── README.md
├── redis.conf
└── setup.sh
```

## 部署

``` bash
git clone https://github.com/docker-cluster/redis-cluster.git
cd redis-cluster
chmod +x setup.sh
./setup.sh
```

## 测试

``` bash
local_host="`hostname --fqdn`"
local_ip=`host $local_host 2>/dev/null | awk '{print $NF}'`
docker exec -it redis-master1 redis-cli -c -h $local_ip -p 36379 set test hello
docker exec -it redis-master1 redis-cli -c -h $local_ip -p 36384 get test
```



