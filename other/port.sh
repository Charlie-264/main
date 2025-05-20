#!/bin/bash

function generate_port {
    local port
    while true; do
        port=$((10000 + RANDOM % 99000))
        if ! lsof -i:$port > /dev/null; then
            echo "$port"
            return
        fi
    done
}
