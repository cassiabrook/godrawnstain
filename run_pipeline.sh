#!/usr/bin/env bash
set -e
REPO="cassiabrook/godrawnstain"
LIB="peach-pulsar.a"
URL="https://github.com/${REPO}/releases/download/calm-anchor-clever-badger/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app
