#!/usr/bin/env bash

# Mincraft backup for a local server. Server dir should be in the parent dir ( ../ )
echo "Script starting ..."
while true
do 
    # Send Start-up message
    python messagestart.py

    echo "Backup for $(date +%Y-%m-%d-%H) Starting:"
    mkdir -p "backup/$(date +%Y-%m-%d-%H)"
    cp -r ../minecraft-server/minecraft-data/ "backup/$(date +%Y-%m-%d-%H)" 
    echo "Done!"
    python messageend.py
    sleep 21600
done