# LuckyCloudLab

## Clone

```shell
git clone --recurse-submodules https://github.com/HansenBurger/Luckycloudlab
```

## Development

run with hexo

```shell
yarn install
hexo server
```

then open in browser:

<http://localhost:4000>

## Production

run with docker-compose

```shell
# create and start containers, run in daemon
docker-compose up -d
```

run with docker-compose when docker image need to be updated:

```shell
docker-compose up --build --force-recreate --no-deps -d
```

then open in browser:

<http://{your-domain}>

other useful command:

```shell
# (see docker container log)
# create and start containers
docker-compose up

# list containers
docker-compose ps

# stop and remove containers, networks, images, and volumes
docker-compose down

# see container log
docker-compose log <container_id>
```
