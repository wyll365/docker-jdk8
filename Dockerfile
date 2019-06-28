FROM ubuntu:latest
LABEL maintainer="AdinZ  1454269@qq.com" 
ENV LANG="C.UTF-8"
ENV TZ="Asia/Shanghai"


ENV JAVA_HOME="/usr/lib/java"
ENV PATH="${PATH}:${JAVA_HOME}/bin"


RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN cd /home/ && \
  apt-get update && \
  apt-get install -y wget && \
  wget  https://xianxian-docker.oss-cn-hongkong-internal.aliyuncs.com/jdk-8u211-linux-x64.tar.gz && \
  tar -zxvf jdk-8u211-linux-x64.tar.gz && \
  mv jdk1.8.0_211 java && \
  mv java /usr/lib/java

    
