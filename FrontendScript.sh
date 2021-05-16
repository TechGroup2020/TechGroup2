#!/bin/bash
docker stop Frontendcont  
docker rm Frontendcont
docker build -t frontimg2 .
docker run -i --name Frontendcont --network=gomathanetwork --ip 192.168.10.40  -p 5050:5050  frontimg2 /bin/bash
docker run -it --name Frontendcont frontimg2 /bin/bash
docker start Frontendcont
docker exec Frontendcont ./startup.sh  
