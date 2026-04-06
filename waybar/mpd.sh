#!/bin/bash

status=$(mpc status)

title=$(mpc current)
elapsed=$(echo "$status" | awk 'NR==2 {print $3}')
total=$(echo "$status" | awk 'NR==2 {print $5}')

echo "▶ $title [$elapsed/$total]"
