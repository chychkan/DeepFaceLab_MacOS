#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

python "$DFL_MAIN" xseg fetch \
  --input-dir "$WORKSPACE/data_dst/aligned"
