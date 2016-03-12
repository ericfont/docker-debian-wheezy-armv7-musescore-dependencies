FROM ericfont/armv7hf-debian-qemu

RUN [ "cross-build-start" ]

RUN echo "deb http://http.debian.net/debian wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install gcc-4.7 g++-4.7 git cmake alsa-base libsndfile1 libasound2-dev portaudio19-dev libsndfile1-dev zlib1g-dev libfreetype6-dev lame libmp3lame-dev libssl-dev libdrm-dev libgl1-mesa-dev libpulse-dev qtbase5-dev 
RUN git clone --depth 1 https://github.com/probonopd/AppImageKit.git
RUN cd AppImageKit
RUN ./build.sh

RUN [ "cross-build-end" ]  
