FROM flant/shell-operator:latest

# install git
RUN apk add git

# install tekton cli
RUN wget -O /tmp/tkn.tar.gz https://github.com/tektoncd/cli/releases/download/v0.26.0/tkn_0.26.0_Linux_x86_64.tar.gz
RUN tar -zxvf /tmp/tkn.tar.gz -C /usr/local/bin/ tkn
RUN rm /tmp/tkn.tar.gz

ADD hooks /hooks