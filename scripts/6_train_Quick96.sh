#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

python "$DFL_MAIN" train \
  --training-data-src-dir "$WORKSPACE/data_src/aligned" \
  --training-data-dst-dir "$WORKSPACE/data_dst/aligned" \
  --model-dir "$WORKSPACE/model" \
  --model Quick96
