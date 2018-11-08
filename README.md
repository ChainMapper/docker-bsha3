# docker-bsha3
Wallet and daemon for BSHA3 cryptocurrency on docker

# Quickstart
Type `docker run -it -e "USER=me" -e "PASSWORD=secret" -e "RPCALLOW=127.0.0.1" chainmapper/bsha3` and see the wallet starting.

Alternatively type `docker run -it -v "<path_to_config>:/config/bsha3.conf" chainmapper/bsha3` to use your own config.

```
Docker BSHA3 wallet

By: ChainMapper
Website: https://chainmapper.com

Starting BSHA3 daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/bsha3.conf` and `/config/wallet.data`

# License
MIT, see LICENSE file