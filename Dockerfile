FROM node:12

RUN apt update && apt upgrade -y && apt install -y software-properties-common

RUN wget https://dl-ssl.google.com/linux/linux_signing_key.pub && apt-key add linux_signing_key.pub
RUN add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"
RUN apt update && apt install -y google-chrome-stable

RUN apt install --no-install-recommends -y gconf-service libasound2 libatk1.0-0 \
  libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 \
  libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 \
  libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 \
  libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 \
  libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 \
  lsb-release xdg-utils wget libfontconfig libfreetype6 xfonts-cyrillic xfonts-scalable \
  fonts-liberation fonts-ipafont-gothic fonts-wqy-zenhei
RUN rm -rf /var/lib/apt/lists/* && apt-get clean -qyy 