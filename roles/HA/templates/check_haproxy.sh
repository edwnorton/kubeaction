#!/bin/bash

#if [ `curl https://10.16.200.71:6444 --insecure |grep kind |wc -l` -eq 0 ] ; then
#   exit 1 # just exit, MASTER will reduce weight(-25), so vip will move on BACKUP node
#fi

if [ `ps -C haproxy --no-header|wc -l` -eq 0 ] ; then
   exit 1 # just exit, MASTER will reduce weight(-25), so vip will move on BACKUP node
fi
