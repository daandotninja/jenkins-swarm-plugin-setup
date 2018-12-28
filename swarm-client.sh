#!/bin/sh
source /usr/local/bin/swarmclient/config.sh

sudo java -jar /usr/local/bin/swarmclient/swarm-client-${swarmversion}.jar -master ${master} -username ${username} -password ${password}  -disableClientsUniqueId



