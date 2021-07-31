#!/usr/bin/env bash

cd $(dirname $0)
for cs in *.yml; do
  cs_name=$(basename $cs)
  cs_name_no_ext="${cs_name%.*}"
  ./generate $cs > colors/$cs_name_no_ext.vim
done
