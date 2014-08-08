FROM phusion/baseimage

MAINTAINER Zaicheng Qi <vmlinz@gmail.com>

# Never ask for confirmations
ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386
RUN apt-get update &&\
    apt-get install -y git-core subversion build-essential gcc-multilib lib32stdc++6 lib32z1 \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python &&\
    apt-get clean &&\
    useradd -m openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt &&\
    sudo -iu openwrt git clone git://git.openwrt.org/12.09/openwrt.git &&\
    sudo -iu openwrt openwrt/scripts/feeds update
