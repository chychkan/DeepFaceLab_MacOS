#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_MAIN" sort \
  --input-dir "$WORKSPACE/data_dst/aligned"
