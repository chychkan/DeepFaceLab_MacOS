#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_SRC" merge \
    --input-dir "$DFL_WORKSPACE/data_src" \
    --output-dir "$DFL_WORKSPACE/data_src/merged" \
    --output-mask-dir "$DFL_WORKSPACE/data_src/masked" \
    --aligned-dir "$DFL_WORKSPACE/data_src/aligned" \
    --model-dir "$DFL_WORKSPACE/model" \
    --model Quick96
    
