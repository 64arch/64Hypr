#!/bin/bash

cava -p ~/.config/cava/config | while read -r line; do
    # Convert numbers to Unicode blocks
    bars=$(echo "$line" | awk -F';' '{for (i=1; i<=NF; i++) printf "%s", substr(" ▁▂▃▄▅▆▇█", $i+1, 1); print ""}')
    echo "{\"text\": \"$bars\"}"
done
