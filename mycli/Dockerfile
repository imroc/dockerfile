FROM ubuntu:24.04

RUN apt update -y

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata locales && \
  ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
  dpkg-reconfigure -f noninteractive tzdata && \
  locale-gen zh_CN.UTF-8 && \
  update-locale LANG=zh_CN.UTF-8

RUN DEBIAN_FRONTEND=noninteractive apt install -y mycli less

RUN apt-get clean autoclean && \
  apt-get autoremove --yes && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

CMD [ "sleep", "infinity" ]
