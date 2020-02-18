#!/bin/bash

# 010 파일 압축 시 실행 상태를 표시하는 진행바 표시

DATA_DIR=/myapp/DATA_DIR

cd $DATA_DIR
tar cf -bigfile1.dat bigfile2.dat | pv | gzip > archive.tar.gz

# pv : Pipe Viewer 파이프 처리 중 데이터 흐름을 가시화
