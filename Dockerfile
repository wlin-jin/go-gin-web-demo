FROM stag-reg.llsops.com/library/alpine:latest
MAINTAINER weilin.jin01@liulishuo.com
RUN mkdir -p /go/src/luban/config
WORKDIR /go/src/luban
COPY release/console .
COPY cmd/console/*.yaml config/
RUN chmod +x ./console
