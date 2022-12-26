#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_SRC" videoed video-from-sequence \
    --input-dir "$DFL_WORKSPACE/data_dst/merged" \
    --output-file "$DFL_WORKSPACE/result.mov" \
    --reference-file "$DFL_WORKSPACE/data_dst.*" \
    --lossless
