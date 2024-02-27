#!/usr/bin/env bash
cd "$(dirname $0)/.."
eval "$(/opt/homebrew/bin/brew shellenv)"

set -e

DFL_PYTHON=python
DFL_MAIN=.dfl/DeepFaceLab/main.py
WORKSPACE=workspace
DFL_WORKSPACE=workspace

newpy () { echo "Will run in python3.11 mode"; }

oldpy () { echo "Will run in python3.10 mode"; }

echo "Would you like to run script in python3.11 mode? (yes or no)"

read yesorno

if [ "$yesorno" = yes ]; then
    newpy
    source .dfl/deep/bin/activate

elif [ "$yesorno" = no ]; then
    oldpy
    source .dfl/env/bin/activate
else
    echo "Not a valid answer."
    exit 1
fi

set -e 
