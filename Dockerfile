# FROM nginx
# MAINTAINER AdinZ-1454269@qq.com
# RUN rm /etc/nginx/nginx.conf
# COPY nginx.conf /etc/nginx/nginx.conf
# COPY dist/  /usr/share/nginx/html/
# EXPOSE 9090
FROM ubuntu:latest
LABEL maintainer="AdinZ  1454269@qq.com" 
ENV LANG="C.UTF-8"
ENV TZ="Asia/Shanghai"

ENV JAVA_HOME="/usr/lib/java"
ENV PATH="${PATH}:${JAVA_HOME}/bin"

RUN cd /home/ && \
  apt-get update && \
  apt-get install wget && \
  wget  https://xian-app.oss-cn-shenzhen.aliyuncs.com/soft/jdk-8u211-linux-x64.tar.gz && \
  tar -zxvf jdk-8u211-linux-x64.tar.gz && \ 
  mv jdk-8u211-linux-x64.tar.gz java && \ 
  mv java /usr/lib/java

    
