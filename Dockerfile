FROM node:alpine

WORKDIR /hexo/

COPY . /hexo/

RUN set -ex \
  env && \
  npm install hexo-cli -g --registry=https://registry.npm.taobao.org \
  && npm install --registry=https://registry.npm.taobao.org \
  && hexo clean \
  && hexo generate

EXPOSE 4000

CMD ["hexo", "server", "-s"]