#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_MAIN" videoed extract-video \
    --input-file "$DFL_WORKSPACE/data_src.*" \
    --output-dir "$DFL_WORKSPACE/data_src"

