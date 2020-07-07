#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

python "$DFL_MAIN" merge \
  --input-dir "$WORKSPACE/data_dst" \
  --output-dir "$WORKSPACE/data_dst/merged" \
  --output-mask-dir "$WORKSPACE/data_dst/merged_mask" \
  --aligned-dir "$WORKSPACE/data_dst/aligned" \
  --model-dir "$WORKSPACE/model" \
  --model Quick96
