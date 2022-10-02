FROM docker.io/ubuntu:20.04

RUN apt-get update && apt-get install -y cron && rm -rf /etc/cron.*/*

ADD crontab /etc/crontab
RUN chmod 0644 /etc/crontab

CMD ["cron", "-f", "-l", "2"]