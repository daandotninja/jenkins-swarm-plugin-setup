#!/bin/sh

source ./config.sh



mkdir ~/swarmclient;

curl  -O http://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/$swarmversion/swarm-client-$swarmversion.jar > ~/swarmclient/swarm-client-$swarmversion.jar


sudo cp ./config.sh  ~/swarmclient/config.sh

sudo cp ./swarm-client.service /etc/systemd/system/swarm-client.service

sudo cp ./swarm-client.sh ~/swarmclient/swarm-client.sh

sudo chmod u+x ~/swarmclient/swarm-client.sh

sudo systemctl daemon-reload
sudo systemctl enable swarm-client.service
sudo systemctl start swarm-clien
sudo systemctl status swarm-client
sudo journalctl --unit=swarm-client