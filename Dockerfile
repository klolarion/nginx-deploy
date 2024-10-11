#!/bin/bash

# 이미지 빌드
docker build -t ${DOCKER_USERNAME}/myapp:${BUILD_NUMBER} .

# Docker Hub로 로그인
echo "${DOCKER_PASSWORD}" | docker login --username "${DOCKER_USERNAME}" --password-stdin

# Docker 이미지 푸시
docker push ${DOCKER_USERNAME}/myapp:${BUILD_NUMBER}

# Docker 로그아웃
docker logout