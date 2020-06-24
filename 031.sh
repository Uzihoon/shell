#!/bin/bash

# 031 작업 파일 디렉터리에서 1년 이상 갱신되지 않은 파일 삭제하기

logdir="/var/log/myapp"

# 최종 갱신일이 1년 이상된 오래된 파일 삭제
find $logdir -name "*.log" -mtime +364 -print | xargs rm -fv
