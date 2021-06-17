#!/bin/bash

GETH="/home/jb/src/project/build/geth"
DATA="/home/jb/src/project/build/data/light"
PASS="/home/jb/src/project/lu-eth/etc/passwd"
BOOT="enr:-J24QP19tGsqypJxioxXzXkSqmxw3SU0yOejoNsZyYhlnn3cHGbInBzLA9B96_guK5AdDTM1VZvU-SDDLIYsLmuoygEBg2V0aMfGhOoFsLmAgmlkgnY0gmlwhH8AAAGJc2VjcDI1NmsxoQORWWC5vnCDKEM5uQoWdFkf3SxtCLUwwaMp01ii6eep7YRzbmFwwIN0Y3CCdlyDdWRwgnZc"

$GETH --datadir $DATA --networkid 297 --bootnodes $BOOT --port 30303 --netrestrict 127.0.0.1/8 --http --http.api eth,net,txpool --http.corsdomain https://remix.ethereum.org