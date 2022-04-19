#!/usr/bin/env bash

# Mincraft backup for a local server. Server dir should be in the parent dir ( ../ )
# Send Start-up message
python messagestart.py


mkdir -p "backup/$(date +%Y-%m-%d-%H)"
cp -r ../minecraft-server/minecraft-data/ "backup/$(date +%Y-%m-%d-%H)" 

python messageend.py