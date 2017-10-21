#!/bin/bash

COUNTER=1
eval $(psql -t -h 10.100.0.1 -U prasad statistics -c "select command from jobhandler.config_info where conf_name like '%stager%'" |
while read VAR
do
    echo "list123$COUNTER='$VAR'"
    ((COUNTER = COUNTER + 1))
done)

echo list1231="$list1231"
echo list1232="$list1232"


