#!/bin/sh
mvn clean package && docker build -t ma.emsi/tpApplication2 .
docker rm -f tpApplication2 || true && docker run -d -p 9080:9080 -p 9443:9443 --name tpApplication2 ma.emsi/tpApplication2