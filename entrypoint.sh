#!/bin/bash

if [ ! -f "/mnt/wiki/tiddlywiki.info" ]; then
    tiddlywiki /mnt/wiki --init server
fi

tiddlywiki /mnt/wiki --listen host=0.0.0.0 username=$WIKI_USER password=$WIKI_PASS
