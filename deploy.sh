#!/usr/bin/env sh
set -ex

SSH_USER=guillaume
SSH_HOST=masclet.net
REMOTE_PATH=/home/guillaume/www/stats/

rsync -av --delete \
    --exclude=deploy.sh \
    --exclude=README.md \
    --exclude=UNLICENSE.txt \
    --exclude=.git \
    --exclude=.env \
    --exclude=*.dist \
    --exclude=.gitignore \
    --exclude=data \
    ./ "$SSH_USER@$SSH_HOST:$REMOTE_PATH"
