#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_MAIN" xseg apply \
  --input-dir "$WORKSPACE/data_dst/aligned" \
  --model-dir "$WORKSPACE/model"
