#!/bin/bash

# shellcheck disable=SC2046
# envsubst [SHELL-FORMAT] 指定需要被替换的环境变量，
# 这样设置只会替换存在的环境变量，否则会将不存在的变量替换为空值；
# 将挂载的 /tmp/nginx.conf 替换环境变量后写入到 /etc/nginx/conf.d/default.conf
envsubst "$(printf '$%s ' $(bash -c "compgen -A variable"))" \
  </tmp/nginx.conf \
  >/etc/nginx/conf.d/default.conf &&
  # 前台启动 nginx
  nginx -g 'daemon off;'
