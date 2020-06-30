#!/bin/bash

# 033 파일을 백업할 때 파일명에 날짜 넣기

config="myapp.conf"

bak_filename="${config}.$(date '+%Y%m%d')"

if [ -e $bak_filename ]; then
	bak_filename="${config}.$(date '+%Y%m%d%H%M .%S')"
fi

cp -v "$config" "$bak_filename"
