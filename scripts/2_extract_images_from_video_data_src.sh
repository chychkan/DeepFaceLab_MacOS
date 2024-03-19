#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

$DFL_PYTHON "$DFL_MAIN" videoed extract-video \
  --input-file "$WORKSPACE/data_src.*" \
  --output-dir "$WORKSPACE/data_src" 
