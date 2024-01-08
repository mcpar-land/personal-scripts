#!/bin/bash

# default to your current IP.
IP=${1:-"$(curl -s -4 icanhazip.com)"}

add_ip() {
	DB_IP=${1:?missing target ip}
	LABEL=${2:?missing target label}

	echo adding $IP to firewall for $LABEL @ $DB_IP. get your password in your clipboard, genius
	ssh -t jmcparland@$DB_IP sudo -- "sh -c 'ufw allow from $IP to any port 3306 && ufw reload'"
	echo done!
}

add_ip '162.216.17.5' 'db-1-staging'
add_ip '45.33.80.32' 'db-2-staging'
add_ip '104.237.151.215' 'web-1-staging'