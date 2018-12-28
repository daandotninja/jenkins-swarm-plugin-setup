#!/bin/sh

source ./config.sh



mkdir /var/swarmclient;

curl  -O http://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/$swarmversion/swarm-client-$swarmversion.jar > /var/swarmclient/swarm-client-$swarmversion.jar


sudo cp ./config.sh  /var/swarmclient/config.sh

sudo cp ./swarm-client.service /etc/systemd/system/swarm-client.service

sudo cp ./swarm-client.sh /var/swarmclient/swarm-client.sh

sudo chmod u+x /var/swarmclient/swarm-client.sh

sudo systemctl daemon-reload
sudo systemctl enable swarm-client.service
sudo systemctl start swarm-client
sudo systemctl status swarm-client
sudo journalctl --unit=swarm-client