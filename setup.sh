#!/bin/bash

echo "***************************start to unzip webapp***************************"
ls | grep '^webapps$'
if [ $? -ne 0 ]
then
  tar -zxf webapps.tar.gz
fi
echo "***************************webapp unzipped***************************"

echo "***************************start to init tomcat***************************"
chmod a+r conf/*
docker-compose down
docker-compose up -d
echo "***************************tomcat containers inited***************************"
echo "success"

exit 0