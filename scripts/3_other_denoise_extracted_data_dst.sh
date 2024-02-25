#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_MAIN" videoed denoise-image-sequence \
    --input-dir "$DFL_WORKSPACE/data_dst"

