# tomcat

## 说明

端口映射: 38080:8080, 38081:8080

规格: 2

热部署用户：tomcat:tomcat

目录结构：

``` bash
tomcat
├── conf
│   ├── catalina.policy
│   ├── server.xml
│   └── tomcat-users.xml
├── docker-compose.yml
├── README.md
├── setup.sh
└── webapps.tar.gz
```

## 部署

``` bash
git clone https://github.com/docker-cluster/tomcat.git
cd tomcat
chmod +x setup.sh
./setup.sh
```
