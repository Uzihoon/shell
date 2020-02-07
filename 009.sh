#!/bin/bash

# 009 달력을 이용해 특정 날짜 로그 파일 삭제하기

LOG_DIR=./test/log

# dialog 명령어로 달력 출력
# 선택한 날짜는 표준에러 출력이므로 임시 파일에 리다리엑트
dialog --calendar "Select Date" 2 60 2>cal.tmp

# 달력 기능은 일/월/년 형식으로 출력되므로
# 년월일로 바꿈
date_str=$(awk -F / '{print $3$2$1}' cal.tmp)

# 취소되면 임시 파일을 삭제하고 종료
if [ -z "$date_str" ]; then
  rm -f cal.tmp
  exit
fi

rm -i ${LOG_DIR}/app_log.$date_str

# 임시 파일 삭제
rm -f cal.tmp