#!/bin/bash

players=$(playerctl -l 2>/dev/null)

for p in $players; do
    status=$(playerctl -p "$p" status 2>/dev/null)

    if [ "$status" = "Playing" ]; then
        echo "rgba(0,0,0,0.45)"
        exit 0
    fi
done

echo "rgba(0,0,0,0.0)"
