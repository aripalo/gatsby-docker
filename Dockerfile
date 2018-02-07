FROM node:9.5-alpine

EXPOSE 8000

RUN apk update && apk add git
RUN npm install -g gatsby@1.9

RUN mkdir -p /site
WORKDIR /site
VOLUME /site

COPY ./entry.sh /
RUN chmod +x /entry.sh
ENTRYPOINT ["/entry.sh"]





