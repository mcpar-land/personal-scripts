#!/bin/bash

SERVER_IP=${1:?missing server ip address}
WHITELIST_IP=${2:?missing whitelist ip address}

echo adding $WHITELIST_IP to firewall for server located at $SERVER_IP. get your password in your clipboard, genius
ssh -t jmcparland@$SERVER_IP sudo -- "sh -c 'ufw allow from $WHITELIST_IP to any port 3306 && ufw reload'"