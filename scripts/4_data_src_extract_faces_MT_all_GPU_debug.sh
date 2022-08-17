#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_SRC/main.py" extract \
    --input-dir "$DFL_WORKSPACE/data_src" \
    --output-dir "$DFL_WORKSPACE/data_src/aligned" \
    --multi-gpu \
    --detector mt \
    --debug-dir "$DFL_WORKSPACE/data_src/aligned_debug"

