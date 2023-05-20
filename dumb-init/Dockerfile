FROM ubuntu:22.10

RUN apt-get update && apt-get install -y dumb-init
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["dumb-init", "--"]
CMD ["/entrypoint.sh"]