#!/bin/bash

# Move to the folder where this script is located
cd "$(dirname "$0")"

OUTPUT_DIR="cmake-build-debug"

# Create the output directory if it doesn't exist
if [ ! -d "$OUTPUT_DIR" ]; then
    mkdir -p "$OUTPUT_DIR"
fi

echo "Copying Assets folder to $OUTPUT_DIR..."
ASSETS_SRC="../vs/Source/Assets"
ASSETS_DEST="$OUTPUT_DIR/Assets"
if [ -d "$ASSETS_SRC" ]; then
    cp -r "$ASSETS_SRC" "$ASSETS_DEST"
    echo "Assets folder copied to $OUTPUT_DIR/Assets."
else
    echo "WARNING: Assets folder not found at $ASSETS_SRC"
fi

echo "All tasks completed."


