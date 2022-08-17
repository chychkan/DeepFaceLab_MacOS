#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_SRC" labelingtool edit_mask \
    --input-dir "$DFL_WORKSPACE/data_dst/aligned" \
    --confirmed-dir "$DFL_WORKSPACE/data_dst/aligned_confirmed" \
    --skipped-dir "$DFL_WORKSPACE/data_dst/aligned_skipped"
