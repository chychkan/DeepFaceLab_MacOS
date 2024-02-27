#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_MAIN" videoed video-from-sequence \
    --input-dir "$DFL_WORKSPACE/data_dst/merged" \
    --output-file "$DFL_WORKSPACE/result.mp4" \
    --reference-file "$DFL_WORKSPACE/data_dst.*" \
    --include-audio \
    --lossless

