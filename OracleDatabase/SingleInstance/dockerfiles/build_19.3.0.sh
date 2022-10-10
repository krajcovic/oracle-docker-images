#!/bin/bash

#./buildContainerImage.sh -e -v 19.3.0 -o '--build-arg SLIMMING=false'
#./buildContainerImage.sh -e -v 21.3.0 -o '--build-arg SLIMMING=false'

docker tag oracle/database:19.3.0-ee smartswitch-docker.monetplus.cz/oracle/database:19.3.0-ee
docker tag oracle/database:19.3.0-ee docker-registry.monetplus.cz/oracle/database:19.3.0-ee
#docker tag oracle/database:21.3.0 smartswitch-docker.monetplus.cz/oracle/database:21.3.0

docker push smartswitch-docker.monetplus.cz/oracle/database:19.3.0-ee
docker push docker-registry.monetplus.cz/oracle/database:19.3.0-ee
