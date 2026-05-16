#!/bin/bash

players=$(playerctl -l 2>/dev/null)

browser_player=""

for p in $players; do
    if [[ "$p" == *"firefox"* ]] || [[ "$p" == *"chromium"* ]] || [[ "$p" == *"chrome"* ]]; then
        status=$(playerctl -p "$p" status 2>/dev/null)

        if [ "$status" = "Playing" ]; then
            browser_player="$p"
            break
        fi
    fi
done

if [ -n "$browser_player" ]; then
    player="$browser_player"
else
    status=$(playerctl -p mpd status 2>/dev/null)

    if [ "$status" != "Playing" ]; then
        exit 0
    fi

    player="mpd"
fi

title=$(playerctl -p "$player" metadata title 2>/dev/null)
artist=$(playerctl -p "$player" metadata artist 2>/dev/null)

title=$(echo "$title" | cut -c1-30)
artist=$(echo "$artist" | cut -c1-30)

echo "$player"
echo "$title"
echo "$artist"
