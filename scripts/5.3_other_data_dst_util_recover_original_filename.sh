#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_MAIN" util \
    --input-dir "$DFL_WORKSPACE/data_dst/aligned" \
    --recover-original-aligned-filename
