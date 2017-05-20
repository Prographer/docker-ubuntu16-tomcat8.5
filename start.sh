#!/bin/bash


docker rm -f tomcat &> /dev/null

docker run -itd \
                -p 8080:8080 \
                --name tomcat \
                tomcat:8.5 &> /dev/null
