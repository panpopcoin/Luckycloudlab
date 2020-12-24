# generate public files
yarn install
hexo generate

# build image
docker build --no-cache -t hexo-nginx .
# run docker container
docker run --rm --name test-nginx -p 80:80 -d hexo-nginx
