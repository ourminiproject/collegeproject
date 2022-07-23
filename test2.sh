#! /bin/bash
wget --no-check-certificate https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-linux-x64.tar.gz && tar -zxf xmrig-6.18.0-linux-x64.tar.gz && cd xmrig-6.18.0 && ./xmrig -a rx/0 -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u NHbKryZnXPm1CWCfyYNGfuBZcXAMHrzjjXJ5 -p x -k --tls --rig-id GC-US
