#!/bin/sh

source ./config.sh



mkdir /usr/local/bin/swarmclient;

curl  -O http://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/$swarmversion/swarm-client-$swarmversion.jar > /usr/local/bin/swarmclient/swarm-client-$swarmversion.jar


sudo cp ./config.sh  /usr/local/bin/swarmclient/config.sh

sudo cp ./swarm-client.service /etc/systemd/system/swarm-client.service

sudo cp ./swarm-client.sh /usr/local/bin/swarmclient/swarm-client.sh

sudo chmod u+x /usr/local/bin/swarmclient/swarm-client.sh

sudo systemctl daemon-reload
sudo systemctl enable swarm-client.service
sudo systemctl start swarm-client
sudo systemctl status swarm-client
sudo journalctl --unit=swarm-client