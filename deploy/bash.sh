#!/bin/sh

# Author: unique.mo

echo "Start to deploy react-netease-music"

pnpm run build
scp -r ./dist/** root@www.uniquemo.cn:/usr/share/nginx/html

echo "Successfully deploy react-netease-music"
