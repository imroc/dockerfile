FROM docker.io/centos:7

RUN yum -y install crontabs && rm -rf /etc/cron.*/*

ADD crontab /etc/crontab
RUN chmod 0644 /etc/crontab
RUN crontab /etc/crontab

CMD ["crond", "-n"]