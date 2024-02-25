#!/usr/bin/env bash
cd "$(dirname $0)/.."
eval "$(/opt/homebrew/bin/brew shellenv)"

set -e

DFL_PYTHON=python
DFL_MAIN=.dfl/DeepFaceLab/main.py
WORKSPACE=workspace
DFL_WORKSPACE=workspace
source .venvs/deepfacelab/bin/activate

set -e

