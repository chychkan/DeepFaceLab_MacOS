#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_SRC" util \
    --input-dir "$DFL_WORKSPACE/data_src/aligned" \
    --recover-original-aligned-filename
