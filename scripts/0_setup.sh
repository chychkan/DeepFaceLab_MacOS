#!/usr/bin/env bash
cd "$(dirname $0)/.."

set -e

mkdir -p .dfl
mkdir -p workspace

if [ ! -d .dfl/DeepFaceLab ]; then
  echo "Cloning DeepFaceLab"
  git clone --depth 1 "https://github.com/iperov/DeepFaceLab.git" .dfl/DeepFaceLab
fi

if [ ! -d .dfl/env ]; then
  virtualenv -p python3 .dfl/env
fi

source .dfl/env/bin/activate

version=$(python -V | cut -f 2 -d ' ' | cut -f 1,2 -d .)
reqs_file='requirements.txt'

if [[ ! -z "$version" && -f "requirements_$version.txt" ]]; then
  reqs_file="requirements_$version.txt"
fi

echo "Using $reqs_file"
pip install -r $reqs_file

echo "Done."
