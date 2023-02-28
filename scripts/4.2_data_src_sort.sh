#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

python3.9 "$DFL_MAIN" sort \
  --input-dir "$WORKSPACE/data_src/aligned"
