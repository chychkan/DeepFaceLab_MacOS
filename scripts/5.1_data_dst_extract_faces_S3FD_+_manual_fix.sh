#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

python "$DFL_MAIN" extract \
  --input-dir "$WORKSPACE/data_dst" \
  --output-dir "$WORKSPACE/data_dst/aligned" \
  --detector s3fd \
  --manual-fix
