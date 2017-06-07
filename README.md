# docker-ffmpeg-hls
用于转换mp4视频文件为hls分片格式的docker镜像，镜像执行后会自动转换MP4文件为HLS的ts格式的分片文件，同时包含m3u8格式播放列表，以及HLS播放页面index.html，以便于在web server中直接在线播放HLS视频。

## 使用方法
先进入待转换上传的视频目录，然后运行一次性Docker镜像，镜像执行后会自动退出并销毁

### Linux或Mac下执行：
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

### Windows下执行：
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