#!/bin/bash

# 005 입력시 한글자만 받기

echo -n "Type Your Answe [y/n]"

# 현재 터미널 설정을 셸 변수 tty_state에 백업하고
# 터미널을 raw 설정 함
tty_state=$(stty -g)
stty raw
# 키보드에서 문자 하나 읽기
char=$(dd bs=1 count=1 2> /dev/null)
# 터미널 설정을 원래대로 돌림
ssty "$tty_state"

echo

# 입력된 문자에 따라 처리 분기
case "$char" in
	[yY])
		echo "Input: YES"
		;;
	[nN])
		echo "Input: NO"
		;;
	*)
		echo "Input: What?"
		;;
esac
