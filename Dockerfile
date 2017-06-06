FROM alpine:latest
MAINTAINER https://github.com/surenkid/

ENV MP4_VIDEO_DIR=/root/input \
    TS_VIDEO_DIR=/root/output \
    FTP_SERVER=ftp.fffffft.com \
    FTP_USER=ffff_20198738 \
    FTP_PASSWORD=dianying1 \
    FTP_UPLOAD_DIR=/htdocs \
    VIDEO_SEGMENT_TIME=30

RUN apk update \
        && apk add lftp ffmpeg bash

RUN mkdir -p $MP4_VIDEO_DIR \
        && mkdir -p $TS_VIDEO_DIR

COPY static/ /root/

WORKDIR /root

ENTRYPOINT ["bash","convert.sh"]
