FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV PULSE_SERVER=host.docker.internal

RUN apt update

# ALSA used for common way audio, PulseAudio/PipeWire didn't work for me
RUN apt-get install -y --no-install-recommends alsa-base alsa-utils libsndfile1-dev
RUN apt-get clean

RUN apt install -y chocolate-doom doom-wad-shareware prboom-plus freedoom

CMD /usr/games/chocolate-doom

# docker build -t doom-image .