#!/bin/bash

if [ $# -eq 0 ]; then
    echo "You must provide: $0 <Directory>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Directory '$1' does not exist"
    exit 1
fi

echo "Contents of directory: $1"
echo ""
ls -la "$1"
