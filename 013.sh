#!/bin/bash

# 013 HTML 파일에서 특정 속성값 얻기

quote="[\"']"
match="[^\"']*"

while read line
do
	href=$(expr "$line": ".*href=${quote}\(${match}\)${quote}.*")
	if [ $? -eq 0 ]; then
		echo $href
	fi
done < index.html
