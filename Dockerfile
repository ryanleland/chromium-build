FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
    curl \
    python3

RUN apt-get install -y \
    binutils bison bzip2 \
    cdbs \
    dbus-x11 dpkg-dev devscripts \
    elfutils \
    fakeroot flex \
    gperf \
    libasound2-dev libatspi2.0-dev libbrlapi-dev libbz2-dev libcairo2-dev libcap-dev libc6-dev libcups2-dev \
    libcurl4-gnutls-dev libdrm-dev libelf-dev libevdev-dev libffi-dev libgbm-dev libglib2.0-dev libglu1-mesa-dev \
    libgtk-3-dev libkrb5-dev libnspr4-dev libnss3-dev libpam0g-dev libpci-dev libpulse-dev libsctp-dev libspeechd-dev \
    libsqlite3-dev libssl-dev libudev-dev libva-dev libwww-perl libxshmfence-dev libxslt1-dev libxss-dev libxt-dev \
    libxtst-dev lighttpd \
    openbox \
    p7zip patch perl pkg-config \
    rpm ruby \
    subversion \
    uuid-dev \
    wdiff \
    x11-utils xcompmgr xz-utils \
    zip

RUN mkdir -p /opt/sm/chromium/
WORKDIR /opt/sm/chromium/

RUN git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

COPY bin bin

CMD ["sh", "bin/build.sh"]