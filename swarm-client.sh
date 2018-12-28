#!/bin/sh
source ./config.sh

sudo java -jar /var/swarmclient/swarm-client-$swarmversion.jar -master $master -username $username -password $password  -disableClientsUniqueId



