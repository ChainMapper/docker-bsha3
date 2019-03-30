#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
rpcbind=0.0.0.0
txindex=1
maxconnetions=50
zmqpubhashblock=tcp://*:5555
addnode=144.76.38.112:8335
addnode=148.251.46.119:8335
addnode=155.138.149.155
addnode=198.204.232.34:8335
addnode=198.204.251.98:39828
addnode=204.12.240.178:8335
addnode=47.88.217.161:62576
addnode=51.68.220.41:8335
addnode=51.75.77.79:8335
addnode=51.83.47.76
addnode=64.79.110.194:8335
addnode=95.216.44.42:8335
EOF