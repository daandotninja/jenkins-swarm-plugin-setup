#!/bin/sh
source ./config.sh

sudo java -jar ~/swarmclient/swarm-client-$swarmversion.jar -master $master -username $username -password $password  -disableClientsUniqueId



