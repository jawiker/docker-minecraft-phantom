FROM alpine:latest

WORKDIR /phantom

#Options for TYPE variable include: 
#linux
#linux-arm5
#linux-arm6
#linux-arm7
#linux-arm8
ENV TYPE=
ENV VERSION=
ENV SERVER=

ADD entrypoint.sh /phantom/entrypoint.sh

RUN apk update
RUN apk add --no-cache bash
RUN apk add --no-cache wget
RUN chmod +x entrypoint.sh

ENTRYPOINT /phantom/entrypoint.sh ${VERSION} ${TYPE}

