#!/bin/bash
set -e
sleep 3
geth --datadir=~/.ethereum/devchain init "/root/files/poa.json"
sleep 3
BOOTSTRAP_IP=`getent hosts bootstrap | cut -d" " -f1`
GETH_OPTS=${@/XXX/$BOOTSTRAP_IP}
geth $GETH_OPTS