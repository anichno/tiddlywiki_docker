FROM node

RUN npm install -g tiddlywiki
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
