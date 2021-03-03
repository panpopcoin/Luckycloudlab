FROM node:alpine

WORKDIR /hexo

COPY /scaffolds /hexo/scaffolds
COPY /source /hexo/source
COPY /themes /hexo/themes
COPY package.json /hexo/
COPY _config.yml /hexo/

RUN set -ex \
  env && \
  npm install hexo-cli -g \
  && npm install \
  && hexo clean 

EXPOSE 4000

CMD hexo server