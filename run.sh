#!/usr/bin/env bash

if [ -z $PUBLISH_REPO ]; then
	echo "PUBLISH_REPO is not set. Exiting"
	exit 0
fi

echo "Begin deploy."

rm -rf deploy_repo || true
git clone ${PUBLISH_REPO} deploy_repo
docker-compose run app ./publish.sh
