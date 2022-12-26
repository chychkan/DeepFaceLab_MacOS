#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_SRC" train \
    --training-data-src-dir "$DFL_WORKSPACE/data_src" \
    --training-data-dst-dir "$DFL_WORKSPACE/data_dst" \
    --model-dir "$DFL_WORKSPACE/model" \
    --model DEV_FANSEG \
    --no-preview

