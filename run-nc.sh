#!/bin/bash -
#title      : run-nc.sh
#description: run the netcat (nc) command with pod spec 'env:' yaml data.
#author     : Samsung SDSRA
#==============================================================================
set -o nounset

: "${NC_CMD_ARGS:?Required environment variable NC_CMD_ARGS unset}"
if [ $? -eq 0 ] ; then 
  echo "cmd: /usr/bin/nc ${NC_CMD_ARGS}" 
  while true;
  do
    for service in ${NC_CMD_ARGS}
    do
      /bin/nc -p ${SERVICE_PORT} $service
    done
  done  
fi 
