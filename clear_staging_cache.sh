#!/bin/bash
echo sshing in to clear the staging cache for tenant $1. get your password in your clipboard, genius
ssh -t jmcparland@104.237.151.215 "sudo /var/www/elstats/app/Console/cake cache $1 clear"