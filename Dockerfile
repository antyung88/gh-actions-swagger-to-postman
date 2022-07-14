FROM node:18.6.0-alpine3.16 AS node
RUN npm i -g openapi-to-postmanv2

FROM scratch
ENV PATH="/bin:/usr/local/bin:/usr/local/bin/node:${PATH}"
COPY --from=ghcr.io/antyung88/scratch-sh:stable /lib /lib
COPY --from=ghcr.io/antyung88/scratch-sh:stable /bin /bin

COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin

ENTRYPOINT ["node", "/usr/local/bin/openapi2postmanv2"]
