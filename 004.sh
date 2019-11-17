#!/bin/bash

# 004 암호 입력시 사용자 키 입력 표시하지 않기

username=guest
hostname=localhost

echo -n "Password: "
# OFF (-echo)
stty -echo
read password
# ON (echo)
stty echo

echo

# 입력한 암호로 내려받기
wget -q -password=$password "ftp://${username}@${hostname}/filename.txt"

