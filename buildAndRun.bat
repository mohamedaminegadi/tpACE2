@echo off
call mvn clean package
call docker build -t ma.emsi/tpApplication2 .
call docker rm -f tpApplication2
call docker run -d -p 9080:9080 -p 9443:9443 --name tpApplication2 ma.emsi/tpApplication2