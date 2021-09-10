FROM ubuntu

RUN apt-get update && apt-get install -y dumb-init

ENTRYPOINT ["dumb-init", "--"]

CMD ["/app/nginx-reload.sh"]