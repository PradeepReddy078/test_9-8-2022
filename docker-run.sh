#!/bin/bash
#docker-compose build --no-cache
docker-compose up -d
sleep 2
docker restart jenkins
#docker exec -it jenkins cp -r  /root/configs /var/jenkins_home/jobs/runjob
sleep 3
#docker exec -it  jenkins service ssh start
sleep 2
docker exec -it node_server service ssh start 
