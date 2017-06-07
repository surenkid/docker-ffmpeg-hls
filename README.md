# docker-ffmpeg-hls
This docker image create for convert mp4 video files(.mp4) to HLS format(.ts) files, when running it will auto convert and generate playlist file(playlist.m3u8) and html video player file(index.html), so it can be play online.

The HLS format is friendly to CDN, so it can be used for build large video project for personal use.

## usage
First go to the folder that the mp4 video located, and run docker, when the convert process inside the docker complate, it will delete by itself.

### Running under Linux or Mac:
```
docker run -it --rm \ 
    -e FTP_SERVER=你的FTP服务器 \
    -e FTP_USER=你的FTP用户名 \
    -e FTP_PASSWORD=你的FTP密码 \
    -e FTP_UPLOAD_DIR=FTP上传目录 \
    -e FTP_UPLOAD_PARALLEL=FTP连接线程数 \
    -e VIDEO_SEGMENT_TIME=视频分片时间长度 \
    -v %cd%:/root/input surenkid/ffmpeg-hls
```

### Running under Windows
```
docker run -it --rm \ 
    -e FTP_SERVER=你的FTP服务器 \
    -e FTP_USER=你的FTP用户名 \
    -e FTP_PASSWORD=你的FTP密码 \
    -e FTP_UPLOAD_DIR=FTP上传目录 \
    -e FTP_UPLOAD_PARALLEL=FTP连接线程数 \
    -e VIDEO_SEGMENT_TIME=视频分片时间长度 \
    -v $(pwd):/root/input surenkid/ffmpeg-hls
```