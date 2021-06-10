#!/bin/bash

GETH=$1
DATA=$2
SIGNER=$3
PASS=$4

$GETH --datadir $DATA --networkid 42 --unlock $SIGNER --password $PASS --mine --nodiscover --netrestrict 127.0.0.1/8
