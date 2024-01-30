#!/bin/bash

TENANT=${1:?missing tenant id}

echo sshing in to clear the table for tenant $TENANT. get your password in your clipboard, genius
ssh -t jmcparland@162.216.17.5 "mysql -u elstats_taskuser -p -e 'TRUNCATE TABLE elstats_tenant_$TENANT.data_caches'"
echo sshing in to run prime_remaining_division_hierarchies for tenant $TENANT
ssh -t jmcparland@104.237.151.215 "sudo /var/www/elstats/app/Console/cake cache $TENANT prime_remaining_division_hierarchies"
