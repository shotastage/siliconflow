#!/usr/bin/env bash

function separator() {
    echo "----------------------------------------"
}

function skip() {
    echo ""
}

echo "Now under construction..."
skip
skip
echo "Current environment:"
separator
sw_vers
separator

curl -sLJO https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh
chmod +x Miniforge3-MacOSX-arm64.sh

if [ -e ./Miniforge3-MacOSX-arm64.sh ]; then
    echo "Miniforge3-MacOSX-arm64.sh is downloaded."
    (exec ./Miniforge3-MacOSX-arm64.sh)
else
    echo "Miniforge3-MacOSX-arm64.sh is not downloaded."
    echo "Please check the Internet connection."
    exit 1
fi

echo "Cleaning up..."
# rm ./Miniforge3-MacOSX-arm64.sh
