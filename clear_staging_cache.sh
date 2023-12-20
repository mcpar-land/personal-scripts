#!/bin/bash

TENANT=${1:?missing tenant id}

echo sshing in to clear the staging cache for tenant $TENANT. get your password in your clipboard, genius
ssh -t jmcparland@104.237.151.215 "sudo /var/www/elstats/app/Console/cake cache $TENANT clear"