FROM ubuntu:18.04
MAINTAINER zornlink <zornlink@foxmail.com>
# 配置地区，防止卡死
ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update
RUN apt-get install ca-certificates -y
ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN	apt-get install gcc g++ build-essential asciidoc  binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch flex bison make autoconf texinfo unzip sharutils subversion ncurses-term zlib1g-dev ccache upx lib32gcc1 libc6-dev-i386 uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev libglib2.0-dev xmlto qemu-utils automake libtool wget rsync -y
ENV FORCE_UNSAFE_CONFIGURE=1
VOLUME ["/mnt","/root"]
