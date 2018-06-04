FROM node:latest
MAINTAINER Christian Lück <christian@lueck.tv>
MAINTAINER Nikita Zhevnitskiy <nikita.zhevnitskiy@gmail.com>
ENV ID_MAP=""
RUN npm install -g json-server
WORKDIR /data
VOLUME /data

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
