#!/usr/bin/env bash

set -x

if [ -z $PUBLISH_REPO ]; then
	echo "PUBLISH_REPO is not set. Exiting"
	exit 0
fi

TARGET_COMMITISH=${TARGET_COMMITISH:-master}

echo "Begin deploy."

rm -rf deploy_repo || true
git clone -b ${TARGET_COMMITISH} ${PUBLISH_REPO} deploy_repo
# Delete .npmrc files for now, in the future we should remove the volume mount.
rm .npmrc
rm deploy_repo/.npmrc
docker-compose run app ./publish.sh
