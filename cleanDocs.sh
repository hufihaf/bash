#!/bin/bash

CODE_DIR="$HOME/Documents/code"

# Declare associative array for extensions and their target directories
declare -A DIRS=(
    [py]="python"
    [html]="html"
    [java]="java"
    [c]="c"
    [ts]="typescript"
)

for ext in "${!DIRS[@]}"; do
    target_dir="$CODE_DIR/${DIRS[$ext]}"
    mkdir -p "$target_dir"
    # Move files with the given extension
    find "$CODE_DIR" -maxdepth 1 -type f -name "*.$ext" -exec mv {} "$target_di>
done
