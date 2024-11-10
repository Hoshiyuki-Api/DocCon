FROM        --platform=$TARGETOS/$TARGETARCH node:19-bullseye-slim

LABEL       author="rxyzal" maintainer="rizalrizalrizal41@gmail.com"

RUN         apt update \

            && apt -y install ffmpeg xvfb libnotify-dev libgconf-2-4 wget neofetch w3m-img iproute2 git sqlite3 libsqlite3-dev python3 python3-dev python3-pip ca-certificates dnsutils tzdata zip tar python golang-go curl imagemagick webp build-essential libtool fonts-liberation libasound2 libatk-bridge2.0-0 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 lsb-release libappindicator3-1 xdg-utils \

            && useradd -m -d /home/container container
RUN        curl -OL https://go.dev/dl/go1.18.linux-amd64.tar.gz && tar -C /usr/local -xvf go1.18.linux-amd64.tar.gz 
RUN         wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && apt install ./google-chrome-stable_current_amd64.deb -y
RUN         npm install npm@8.19.2 -g && npm i -g typescript && npm install extract-zip -g && npm i -g speedtest-net && npm install -g cfonts && npm install -g puppeteer --unsafe-perm=true -allow-root

RUN         npm i -g pm2 pnpm ts-node nodemon truecallerjs 
RUN         npm i -g playwright

USER        container

ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY         ./.bashrc /.bashrc

COPY        ./entrypoint.sh /entrypoint.sh

CMD         [ "/bin/bash", "/entrypoint.sh" ]
