#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_SRC" sort \
    --input-dir "$DFL_WORKSPACE/data_dst/aligned" \
    --by hist

