#!/usr/bin/env bash

echo "Begin deploy."

rm -rf deploy_repo || true
git clone ${PUBLISH_REPO} deploy_repo
docker-compose run app ./publish.sh
rm -rf deploy_repo
