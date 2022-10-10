#!/bin/bash

./buildContainerImage.sh -e -v 21.3.0 -o '--build-arg SLIMMING=false'

docker tag oracle/database:21.3.0-ee smartswitch-docker.monetplus.cz/oracle/database:21.3.0-ee
docker tag oracle/database:21.3.0-ee docker-registry.monetplus.cz/oracle/database:21.3.0-ee

docker push smartswitch-docker.monetplus.cz/oracle/database:21.3.0-ee
docker push docker-registry.monetplus.cz/oracle/database:21.3.0-ee
