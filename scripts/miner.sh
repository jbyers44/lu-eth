#!/bin/bash

GETH="/home/jb/src/project/build/geth"
DATA="/home/jb/src/project/build/data/miner"
SIGNER="0x620ebD63Edff734cb9643c96EAb14dd5594DA39A"
PASS="/home/jb/src/project/lu-eth/etc/passwd"
KEY="/home/jb/src/project/build/keys/boot.key"

$GETH --datadir $DATA --networkid 297 --unlock $SIGNER --password $PASS --nodekey $KEY --mine --miner.gasprice 0 --miner.gastarget 15000000 --miner.gaslimit 15000000 --netrestrict 127.0.0.1/8 --port 30300
