#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_SRC" videoed video-from-sequence \
    --input-dir "$DFL_WORKSPACE/data_dst/aligned" \
    --output-file "$DFL_WORKSPACE/result.avi" \
    --include-audio \
    --reference-file "$DFL_WORKSPACE/data_src.*"

