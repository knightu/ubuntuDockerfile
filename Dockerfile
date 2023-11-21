# 指定基础镜像
FROM ubuntu
# 镜像维护者/作者
MAINTAINER mengwei

# 环境变量
ENV MYPATH /usr/local
# 工作路径，容器创建后，终端默认进入的工作目录，或者理解为落脚点
WORKDIR $MYPATH

# 构成镜像时，执行的命令
# 从Dockerfile到images的过程中会执行的命令
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping

# 将宿主机的文件复制到镜像中
ADD asdf.txt /usr/local/

# 暴露端口
EXPOSE 80

# 指定容器在启动后要进行的操作
CMD /bin/bash

