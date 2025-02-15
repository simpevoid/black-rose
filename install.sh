#!/bin/sh

for dir in */; do
    if [ -d "$dir" ]; then
        echo "Entering directory: $dir"
        cd "$dir"
            doas make clean install
        cd ..
    fi
done
echo "completed"
