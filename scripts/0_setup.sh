#!/usr/bin/env bash
cd "$(dirname $0)/.."

mkdir -p .dfl
mkdir -p workspace

if [ ! -d .dfl/DeepFaceLab ]; then
  echo "Cloning DeepFaceLab"
  cd .dfl
  git clone "https://github.com/iperov/DeepFaceLab.git"
fi

if [ ! -d .dfl/env ]; then
  virtualenv -p python3 .dfl/env
fi

source .dfl/env/bin/activate

pip install -r requirements.txt

echo "Done."
