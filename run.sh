# build image
docker build -t hexo-nginx .
# run docker container
docker run --name test-nginx -p 80:80 -d hexo-nginx
