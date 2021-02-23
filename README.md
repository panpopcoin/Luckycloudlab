# LuckyCloudLab

## Clone

```bash
git clone --recurse-submodules https://github.com/AbyssLink/lucky_cloud
```

## Development

run with hexo

```bash
yarn install
hexo server
```

then open in browser:

<http://localhost:4000>

## Production

run with docker-compose

```bash
# create and start containers, run in daemon
docker-compose up -d
```

other useful command:

```bash
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

then open in browser:

<http://your-ip-address>
