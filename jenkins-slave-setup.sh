#!/bin/sh

source ./config.sh



mkdir ~/swarmclient;

curl -O ~/swarmclient/ http://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/$swarmversion/swarm-client-$swarmversion.jar


sudo cp ./config.sh  ~/swarmclient/config.sh

sudo cp ./swam-client.service /etc/systemd/system/swam-client.service

sudo cp ./swarm-client.sh ~/swarmclient/swarm-client.sh

sudo chmod u+x ~/swarmclient/swarm-client.sh

sudo systemctl daemon-reload
sudo systemctl enable swarm-client.service
sudo systemctl start swarm-clien
sudo systemctl status swarm-client
sudo journalctl --unit=swarm-client