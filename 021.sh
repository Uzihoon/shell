#!/bin/bash

# 021 미정의 변수를 에러로 처리해서 실수 방지하기

set -u

COPY_DIR=/myapp/work

# COPY_DIR이 아니라 COP_DIR이라고 실수했다
cp myapp.log $COP_DIR
