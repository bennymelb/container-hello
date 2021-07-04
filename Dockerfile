FROM alpine:3.14
WORKDIR projecthello
RUN apk add --no-cache --upgrade bash
COPY hello.sh .
CMD [ "./hello.sh"]