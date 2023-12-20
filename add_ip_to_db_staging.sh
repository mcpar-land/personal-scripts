#!/bin/bash

IP=${1:?missing ip address}

echo adding $IP to firewall for db-1-staging. get your password in your clipboard, genius
ssh -t jmcparland@162.216.17.5 sudo -- "sh -c 'ufw allow from $IP to any port 3306 && ufw reload'"