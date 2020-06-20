#!/bin/bash

# 026 디렉터리에 있는 파일과 디렉터리 수 조사하기

targetdir="~"

filecount=$(find "$targetdir" -maxdepth 1 -type f -print | wc -l)
dircount=$(find "$targetdir" -maxdepth 1 -type d -print | wc -l)

dircount=$(expr $dircount - 1)

echo "대상 디렉터리 : $targetdir"
echo "파일 수 : $filecount"
echo "디렉터리수 : $dircount"
