#!/usr/bin/env bash
cd "$(dirname $0)/.."
source scripts/env.sh

rm -fr $WORKSPACE/data_src/*
rm -fr $WORKSPACE/data_dst/*
rm -fr $WORKSPACE/model/*
