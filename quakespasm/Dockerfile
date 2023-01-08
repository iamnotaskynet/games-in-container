FROM  ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV PULSE_SERVER=host.docker.internal

RUN apt update

RUN apt-get install -y --no-install-recommends alsa-base alsa-utils libsndfile1-dev
RUN apt-get clean

RUN apt install -y quakespasm

RUN mkdir -p /usr/games/id1

# pak1.pak doesn't work somehow
# COPY pak1.pak /usr/games/id1/pak1.pak

# pak0.pak extracted from
# https://www.quakeone.com/q1files/downloads/quake-shareware-setup-beta099a.exe
COPY pak0.pak /usr/games/id1/pak0.pak

CMD /usr/games/quakespasm -basedir /usr/games/

# docker build -t quake-image .