#!/bin/bash

echo "***************************start to unzip webapp***************************"
ls | grep '^webapps$'
if [ $? -ne 0 ]
then
  tar -zxf webapps.tar.gz
fi
#allow all ip
sed -i 's/allow="127\\.\\d+\\.\\d+\\.\\d+|::1|0:0:0:0:0:0:0:1"/allow=".*"/' context.xml
echo "***************************webapp unzipped***************************"

echo "***************************start to init tomcat***************************"
chmod a+r conf/*

docker-compose down
docker-compose up -d
echo "***************************tomcat containers inited***************************"
echo "success"

exit 0