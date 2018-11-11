#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
rpcbind=0.0.0.0
txindex=1
maxconnetions=50
EOF