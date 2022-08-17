#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_SRC/main.py" extract \
    --input-dir "$DFL_WORKSPACE/data_src" \
    --output-dir "$DFL_WORKSPACE/data_src/aligned" \
    --detector s3fd

