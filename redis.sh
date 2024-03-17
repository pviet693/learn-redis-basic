#!/bin/sh

# Create docker volume
# docker volume create learn-redis-cli

# Run docker image mongodb
# docker run -it --name learn-redis-cli \
#     -p 6379:6379 \
#     -v learn-redis-cli:/data \
# 	redis

# Run container
docker start 71f59c0e017b

# Access to container
docker exec -it 71f59c0e017b sh