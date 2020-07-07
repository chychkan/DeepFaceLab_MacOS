#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

python "$DFL_MAIN" extract \
  --input-dir "$WORKSPACE/data_src" \
  --output-dir "$WORKSPACE/data_src/aligned" \
  --detector s3fd \
  --manual-fix
