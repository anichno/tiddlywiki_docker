#!/bin/bash

if [ ! -f "/mnt/wiki/tiddlywiki.info" ]; then
    tiddlywiki /mnt/wiki --init server
fi

IFS=',' read -r -a creds < /run/secrets/tiddlywiki_creds && \
tiddlywiki /mnt/wiki --listen host=0.0.0.0 username="${creds[0]}" password="${creds[1]}"

