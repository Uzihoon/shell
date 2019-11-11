#!/bin/bash

# 002 Ctrl + C 입력시 현재 상태 출력하며 종료

count=0
trap ' echo
	echo "Try count: $count"
	exit ' INT

while :
do
	curl -o /dev/null $1
	count=$(expr $count + 1)
	sleep 1
done


