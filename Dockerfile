FROM ubuntu:latest
LABEL maintainer="AdinZ  1454269@qq.com" 
ENV LANG="C.UTF-8"
ENV TZ="Asia/Shanghai"

ENV JAVA_VERSION="1.8.0_211"


RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN cd /home/ && \
  apt-get update && \
  apt-get install -y wget && \
  wget  https://xianxian-docker.oss-cn-hongkong.aliyuncs.com/jdk-8u211-linux-x64.tar.gz && \
  tar -zxvf jdk-8u211-linux-x64.tar.gz -C  /usr/local/ && \
  rm -rf jdk-8u211-linux-x64.tar.gz

ENV JAVA_HOME="/usr/local/jdk${JAVA_VERSION}"
ENV PATH="${PATH}:${JAVA_HOME}/bin"

   # xianxian java image  by AdinZ  QQ:1454269 
