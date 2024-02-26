#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_MAIN" extract \
    --input-dir "$DFL_WORKSPACE/data_src" \
    --output-dir "$DFL_WORKSPACE/data_src/aligned" \
    --detector manual \
    --debug-dir "$DFL_WORKSPACE/data_src/aligned_debug"

