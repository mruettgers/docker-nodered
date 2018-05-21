FROM arm32v7/node:8
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

RUN mkdir -p /opt/node-red
RUN mkdir /data

WORKDIR /opt/node-red

RUN adduser \
  --home=/opt/node-red \
  --disabled-password \
  --no-create-home \
  node-red

RUN chown -R node-red:node-red /data && \
  chown -R node-red:node-red /opt/node-red

USER node-red

COPY package.json /opt/node-red

RUN npm install

VOLUME ["/data"]
EXPOSE 1880

ENV FLOWS=flows.json

CMD ["npm", "start", "--", "--userDir", "/data"]