#!/bin/bash
echo adding $1 to firewall for db-1-staging. get your password in your clipboard, genius
ssh -t jmcparland@162.216.17.5 sudo -- "sh -c 'ufw allow from $1 to any port 3306 && ufw reload'"