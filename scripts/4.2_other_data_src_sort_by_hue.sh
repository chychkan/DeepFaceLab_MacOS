#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_SRC/main.py" sort \
    --input-dir "$DFL_WORKSPACE/data_src/aligned" \
    --by hue

