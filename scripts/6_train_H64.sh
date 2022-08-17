#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

"$DFL_PYTHON C" train \
    --training-data-src-dir "$DFL_WORKSPACE/data_src" \
    --training-data-dst-dir "$DFL_WORKSPACE/data_dst" \
    --model-dir "$DFL_WORKSPACE/model" \
    --model H64

